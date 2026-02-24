%% @hidden
-module(on_register_failed_hook).

-include("vernemq_dev.hrl").

%% called as an 'all'-hook, return value is ignored
-callback on_register_failed(Peer          :: peer(),
                           SubscriberId  :: subscriber_id(),
                           UserName      :: username(),
                           CleanSession  :: flag(),
                           Reason        :: atom()) -> any().
