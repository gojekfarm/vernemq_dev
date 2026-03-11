%% @hidden
-module(on_undeliverable_publish_hook).
-include("vernemq_dev.hrl").

%% called as an all_till_ok - hook
-callback on_undeliverable_publish(SubscriberId  :: subscriber_id(),
                                    QoS           :: qos(),
                                    IsRetain      :: flag(),
                                    MatchedAcl    :: matched_acl()) -> any().