# xrtli@GitHub
# Käynnistää virtuaalisen Abitti-palvelimen automatisoidusti
# Initiates a virtual Abitti server instance automatically

# Set environmental variables
$env:HOMEDRIVE="C:"
$env:HOMEPATH="\Users\" + $Env:USERNAME + "\"

# Declare a full path to the ktp directory
$FULLPATH = $env:HOMEDRIVE + $env:HOMEPATH + "ktp"
cd $FULLPATH

# Being in the ktp dir,
# set the ktp-jako dir relative path
$EXAMPATH = "..\ktp-jako"

# Print out the full ktp path
echo ""
echo "Poluksi valittu:"
echo $FULLPATH
echo ""
echo ""

# Print out the exam dir path
echo ""
echo ""
echo "Etsitään kokeita hakemistosta:"
echo $EXAMPATH
echo ""
echo ""

echo "------- [ PALVELIMELLA OLEVAT KOKEET ] -------"

# List all the files inside of ktp-jako exam folder
Get-ChildItem -Path $EXAMPATH
echo ""
echo "Varmista, että koe on listattu yllä. Jatketaan automaattisesti..."

# Sleep for 2s to ensure the teacher sees
# the exam listing printed above
sleep(2)

# Initiate a vagrant session
vagrant up
