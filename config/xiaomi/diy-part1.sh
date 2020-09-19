#!/bin/bash
cd package
svn co https://github.com/coolsnowwolf/lede/trunk/package/lean
rm -rf lean/shortcut-fe
rm -rf lean/.svn