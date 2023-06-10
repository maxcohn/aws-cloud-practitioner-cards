# Half backed spell checking. This will spell check and then clean the aspell output and remove duplicates.
# This requires a manual look when run but it probably won't be ran again, or at least very seldom.

cat cards.yaml | aspell -a | grep '^&' | cut -d ':' -f 1 | sed -E 's/^& (\w+) .*$/\1/g' | tr '[A-Z]' '[a-z]' | sort | uniq