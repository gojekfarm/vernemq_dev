%% @hidden
-module(on_publish_hook).
-include("vernemq_dev.hrl").

%% called as an 'all'-hook, return value is ignored
-callback on_publish(UserName      :: username(),
                     SubscriberId  :: subscriber_id(),
                     QoS           :: qos(),
                     Topic         :: topic(),
                     Payload       :: payload(),
                     IsRetain      :: flag(),
                     MatchedAcl    :: matched_acl()) -> any().
