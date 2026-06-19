%% @hidden
-module(on_subscribe_m5_hook).
-include("vernemq_dev.hrl").

%% called as an 'all'-hook, return value is ignored
-callback on_subscribe_m5(UserName      :: username(),
                          SubscriberId  :: subscriber_id(),
                          Topics        :: [{Topic :: topic(), SubInfo :: subinfo(), MatchedAcl :: matched_acl()}],
                          Props         :: properties(),
                          SessionId     :: session_id()) -> any().
