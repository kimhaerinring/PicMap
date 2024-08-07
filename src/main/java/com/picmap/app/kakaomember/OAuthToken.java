package com.picmap.app.kakaomember;

import com.fasterxml.jackson.annotation.JsonProperty;

public class OAuthToken {
	    @JsonProperty("access_token")
	    private String access_token;

	    @JsonProperty("token_type")
	    private String token_type;

	    @JsonProperty("expires_in")
	    private Integer expires_in;

	    @JsonProperty("refresh_token")
	    private String refresh_token;

	    @JsonProperty("refresh_token_expires_in")
	    private Integer refresh_token_expires_in;

	    @JsonProperty("scope")
	    private String scope;

		public String getAccess_token() {
			return access_token;
		}

		public void setAccess_token(String access_token) {
			this.access_token = access_token;
		}

		public String getToken_type() {
			return token_type;
		}

		public void setToken_type(String token_type) {
			this.token_type = token_type;
		}

		public Integer getExpires_in() {
			return expires_in;
		}

		public void setExpires_in(Integer expires_in) {
			this.expires_in = expires_in;
		}

		public String getRefresh_token() {
			return refresh_token;
		}

		public void setRefresh_token(String refresh_token) {
			this.refresh_token = refresh_token;
		}

		public Integer getRefresh_token_expires_in() {
			return refresh_token_expires_in;
		}

		public void setRefresh_token_expires_in(Integer refresh_token_expires_in) {
			this.refresh_token_expires_in = refresh_token_expires_in;
		}

		public String getScope() {
			return scope;
		}

		public void setScope(String scope) {
			this.scope = scope;
		}

		}

	
