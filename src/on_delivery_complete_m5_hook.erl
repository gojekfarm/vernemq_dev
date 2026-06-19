-module(on_delivery_complete_m5_hook).
-include("vernemq_dev_int.hrl").

%% called as an 'all'-hook, return value is ignored
-callback on_delivery_complete(UserName      :: username(),
                               SubscriberId  :: subscriber_id(),
                               QoS           :: qos(),
                               Topic         :: topic(),
                               Payload       :: payload(),
                               IsRetain      :: flag(),
                               MatchedAcl    :: matched_acl(),
                               Persisted     :: flag(),
                               SessionId     :: session_id(),
                               Properties    :: deliver_properties()
                            ) -> any().

-type deliver_properties() ::
        #{
          p_payload_format_indicator => unspecified | utf8,
          p_message_expiry_interval => seconds(),
          p_topic_alias => 1..65535,
          p_response_topic => topic(),
          p_correlation_data => binary(),
          p_user_property => nonempty_list(user_property()),
          p_subscription_id => [subscription_id()],
          p_content_type => utf8string()
         }.

-export_type([deliver_properties/0]).
