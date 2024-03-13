%% @hidden
-module(on_delivery_complete_hook).
-include("vernemq_dev.hrl").

%% called as an 'all'-hook, return value is ignored
-callback on_delivery_complete(UserName      :: username(),
                               SubscriberId  :: subscriber_id(),
                               QoS           :: qos(),
                               Topic         :: topic(),
                               Payload       :: payload(),
                               IsRetain      :: flag(),
                               MatchedAcl    :: matched_acl(),
                               Persisted     :: flag()) -> any().
