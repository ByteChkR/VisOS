. ./scripts/vis-sdk-install.sh #Install VisSDK

. ./scripts/vis-console.sh #Make this Console a VIS Console

. ./scripts/vis-update.sh VisOS.Utility
. ./scripts/vis-update.sh VisOS.Driver
. ./scripts/vis-update.sh VisOS.Tests
. ./scripts/vis-update.sh VisOS.Commands
. ./scripts/vis-update.sh VisOS.Core
. ./scripts/vis-update.sh VisOS
. ./scripts/vis-update.sh Example


. ./scripts/vis-run.sh Example RunOS
