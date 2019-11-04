#!/usr/bin/env bash
set -e

function die()
{
    echo "::error::$1"
	echo "------------------------------------------------------------------------------------------------------------------------"
    exit 1
}

cat << END
------------------------------------------------------------------------------------------------------------------------
                                _   _                                                              
                      __ _  ___| |_(_) ___  _ __        _ __ ___ _ __   ___  _ __ ___   __ _ _ __  
                     / _\` |/ __| __| |/ _ \| '_ \ _____| '__/ _ \ '_ \ / _ \| '_ \` _ \ / _\` | '_ \\ 
                    | (_| | (__| |_| | (_) | | | |_____| | |  __/ |_) | (_) | | | | | | (_| | | | |
                     \__,_|\___|\__|_|\___/|_| |_|     |_|  \___| .__/ \___/|_| |_| |_|\__,_|_| |_|
                                                                |_|                                
                    https://github.com/hacking-gentoo/action-repoman           (c) 2019 Max Hacking 
------------------------------------------------------------------------------------------------------------------------
END

[[ -z "${GITHUB_WORKSPACE}" ]] && die "Must set GITHUB_WORKSPACE in env"
cd "${GITHUB_WORKSPACE}" || die "GITHUB_WORKSPACE does not exist"

PORTDIR_OVERLAY="." repoman --straight-to-stable -dx full || die "Repoman failed"

echo "------------------------------------------------------------------------------------------------------------------------"