package com.narvii.util.http;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.google.firebase.sessions.settings.c;
import com.narvii.app.NVApplication;
import com.narvii.logging.PageRefererInfo;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Log;
import java.io.File;
import java.io.InputStream;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;
import qa.y;

/* JADX INFO: loaded from: classes4.dex */
public class ApiRequest {
    public static final String CONTENT_TYPE_BINARY = "application/octet-stream";
    public static final String CONTENT_TYPE_JSON = "application/json; charset=utf-8";
    public static final String CONTENT_TYPE_MULTIPART = "multipart/form-data";
    public static final String CONTENT_TYPE_TEXT = "text/plain; charset=utf-8";
    public static final String CONTENT_TYPE_URL_FORM = "application/x-www-form-urlencoded; charset=utf-8";
    public static final int DELETE = 3;
    public static final int GET = 0;
    public static final String MULTIPART_NAME_PAYLOAD = "payload";
    public static final int POST = 1;
    Object body;
    String boundary;
    int cid = -1;
    String contentType;
    boolean deleteBodyAfterDone;
    List<NameValuePair> headers;
    int method;
    PageRefererInfo nextPageRefererInfo;
    List<MultiPart> parts;
    Integer retry;
    int signature;
    boolean silent;
    Object tag;
    HashMap<Object, Object> tags;
    int timeout;
    String url;
    boolean userInteraction;
    boolean verbose;
    int verify;

    public static class Builder {
        int communityId;
        StringBuilder path;
        int protocol;
        ApiRequest request;
        int scopeCid;
        int segment;
        int server;

        public Builder() {
            this.communityId = -1;
            this.request = new ApiRequest();
        }

        public Builder body(String str) {
            this.request.body = str;
            return this;
        }

        public Builder chatServer() {
            this.server = 1;
            return this;
        }

        public Builder global() {
            this.communityId = 0;
            return this;
        }

        public Builder headers(List<NameValuePair> list) {
            ApiRequest apiRequest = this.request;
            if (apiRequest.headers == null) {
                apiRequest.headers = new ArrayList(4);
            }
            this.request.headers.addAll(list);
            return this;
        }

        public Builder https() {
            this.protocol = 1;
            return this;
        }

        public Builder mediaServer() {
            this.server = 2;
            return this;
        }

        public Builder staticPath() {
            this.segment = 1;
            return this;
        }

        public Builder tag(Object obj) {
            this.request.tag = obj;
            return this;
        }

        public Builder _url(String str) {
            int i10;
            char cCharAt;
            if (this.path != null) {
                throw new RuntimeException("unable to set url, path is already set");
            }
            this.request.url = str;
            int iIndexOf = str.indexOf("/null");
            if (iIndexOf > 0 && ((i10 = iIndexOf + 5) >= str.length() || (cCharAt = str.charAt(i10)) == '/' || cCharAt == '?')) {
                Log.e("null in url: " + str);
            }
            return this;
        }

        public Builder addHeaderField(String str, String str2) {
            return (str == null || str2 == null) ? this : headers(str, str2);
        }

        public Builder addPart(MultiPart multiPart) {
            ApiRequest apiRequest = this.request;
            if (apiRequest.parts == null) {
                apiRequest.parts = new ArrayList();
            }
            this.request.parts.add(multiPart);
            return this;
        }

        public Builder body(ObjectNode objectNode) {
            this.request.body = objectNode;
            return this;
        }

        public ApiRequest build() {
            if (this.path != null) {
                StringBuilder sb = new StringBuilder();
                if (this.protocol == 1) {
                    sb.append(y.HTTPS);
                } else {
                    sb.append(y.HTTP);
                }
                sb.append("service" + NVApplication.mainHost);
                if (this.segment == 1) {
                    sb.append("/static");
                } else {
                    sb.append("/api");
                }
                sb.append("/v1");
                int i10 = this.communityId;
                if (i10 < 0) {
                    sb.append("/xx");
                } else if (i10 == 0) {
                    sb.append("/g");
                } else {
                    sb.append("/x");
                    sb.append(this.communityId);
                }
                if (this.scopeCid == 0) {
                    sb.append("/s");
                } else {
                    sb.append("/s-x");
                    sb.append(this.scopeCid);
                }
                if (this.path.length() <= 0 || this.path.charAt(0) != '/') {
                    sb.append(c.FORWARD_SLASH_STRING);
                }
                sb.append((CharSequence) this.path);
                this.request.url = sb.toString();
            }
            ApiRequest apiRequest = this.request;
            Object obj = apiRequest.body;
            if (obj instanceof StringBuilder) {
                apiRequest.body = obj.toString();
            }
            if (this.request.contentMultiPart()) {
                ApiRequest apiRequest2 = this.request;
                if (apiRequest2.parts == null) {
                    apiRequest2.parts = new ArrayList();
                }
                ApiRequest apiRequest3 = this.request;
                apiRequest3.body = apiRequest3.parts;
            }
            return this.request;
        }

        public Builder communityId(int i10) {
            this.communityId = i10;
            this.request.cid = i10;
            return this;
        }

        public Builder contentType(String str) {
            this.request.contentType = str;
            return this;
        }

        public Builder contentTypeBinary() {
            this.request.contentType = ApiRequest.CONTENT_TYPE_BINARY;
            return this;
        }

        public Builder contentTypeJson() {
            this.request.contentType = ApiRequest.CONTENT_TYPE_JSON;
            return this;
        }

        public Builder contentTypeText() {
            this.request.contentType = ApiRequest.CONTENT_TYPE_TEXT;
            return this;
        }

        public Builder contentTypeUrlForm() {
            this.request.contentType = ApiRequest.CONTENT_TYPE_URL_FORM;
            return this;
        }

        public Builder delete() {
            this.request.method = 3;
            return this;
        }

        public Builder deleteBodyAfterDone() {
            this.request.deleteBodyAfterDone = true;
            return this;
        }

        public Builder param(String str, Object obj) {
            StringBuilder sb;
            ApiRequest apiRequest = this.request;
            if (apiRequest.method != 1) {
                StringBuilder sb2 = this.path;
                if (sb2 != null) {
                    if (sb2.indexOf("?") < 0) {
                        sb2.append('?');
                    } else if (sb2.charAt(sb2.length() - 1) != '&') {
                        sb2.append('&');
                    }
                    sb2.append(str);
                    if (obj != null) {
                        sb2.append('=');
                        sb2.append(URLEncoder.encode(String.valueOf(obj)));
                    }
                } else {
                    String str2 = apiRequest.url;
                    if (str2 == null) {
                        throw new RuntimeException("you must set the path or url before you use ApiRequest.Builder.params(...)");
                    }
                    StringBuilder sb3 = new StringBuilder(str2);
                    if (sb3.indexOf("?") < 0) {
                        sb3.append('?');
                    } else if (sb3.charAt(sb3.length() - 1) != '&') {
                        sb3.append('&');
                    }
                    sb3.append(str);
                    if (obj != null) {
                        sb3.append('=');
                        sb3.append(URLEncoder.encode(String.valueOf(obj)));
                    }
                    this.request.url = sb3.toString();
                }
            } else if (ApiRequest.CONTENT_TYPE_URL_FORM.equals(apiRequest.contentType)) {
                Object obj2 = this.request.body;
                if (obj2 == null) {
                    sb = new StringBuilder();
                } else if (obj2 instanceof String) {
                    sb = new StringBuilder((String) obj2);
                } else {
                    if (!(obj2 instanceof StringBuilder)) {
                        throw new IllegalStateException("unable to append url form, body is not a string");
                    }
                    sb = (StringBuilder) obj2;
                }
                if (sb.length() > 0) {
                    sb.append('&');
                    sb.append(str);
                    if (obj != null) {
                        sb.append('=');
                        sb.append(URLEncoder.encode(String.valueOf(obj)));
                    }
                }
                this.request.body = sb.toString();
            } else {
                ApiRequest apiRequest2 = this.request;
                if (apiRequest2.body == null) {
                    apiRequest2.body = JacksonUtils.createObjectNode();
                }
                Object obj3 = this.request.body;
                if (obj3 instanceof ObjectNode) {
                    ObjectNode objectNode = (ObjectNode) obj3;
                    if (obj instanceof Integer) {
                        objectNode.put(str, ((Integer) obj).intValue());
                    } else if (obj instanceof Long) {
                        objectNode.put(str, ((Long) obj).longValue());
                    } else if (obj instanceof Float) {
                        objectNode.put(str, ((Float) obj).floatValue());
                    } else if (obj instanceof Double) {
                        objectNode.put(str, ((Double) obj).doubleValue());
                    } else if (obj instanceof Boolean) {
                        objectNode.put(str, ((Boolean) obj).booleanValue());
                    } else if (obj instanceof JsonNode) {
                        objectNode.put(str, (JsonNode) obj);
                    } else if (obj == null) {
                        objectNode.putNull(str);
                    } else {
                        objectNode.put(str, String.valueOf(obj));
                    }
                } else {
                    if (!(obj3 instanceof JSONObject)) {
                        throw new IllegalStateException("unable to append params on " + this.request.body.getClass());
                    }
                    try {
                        ((JSONObject) obj3).put(str, obj);
                    } catch (Exception unused) {
                    }
                }
            }
            return this;
        }

        public Builder path(String str) {
            int i10;
            char cCharAt;
            if (this.request.url != null) {
                throw new RuntimeException("unable to set path, url is already set");
            }
            this.path = new StringBuilder(str);
            int iIndexOf = str.indexOf("/null");
            if (iIndexOf > 0 && ((i10 = iIndexOf + 5) >= str.length() || (cCharAt = str.charAt(i10)) == '/' || cCharAt == '?')) {
                Log.e("null in url: " + str);
            }
            return this;
        }

        public Builder post() {
            this.request.method = 1;
            return this;
        }

        public Builder retry(int i10) {
            this.request.retry = Integer.valueOf(i10);
            return this;
        }

        public Builder scopeCommunityId(int i10) {
            this.scopeCid = i10;
            this.communityId = 0;
            this.request.cid = i10;
            return this;
        }

        public Builder selfHandleErrorCode(int i10) {
            tag("_error_" + i10, Boolean.TRUE);
            return this;
        }

        @Deprecated
        public Builder signature(int i10) {
            this.request.signature = i10;
            return this;
        }

        public Builder silent() {
            this.request.silent = true;
            return this;
        }

        public Builder tag(Object obj, Object obj2) {
            ApiRequest apiRequest = this.request;
            if (apiRequest.tags == null) {
                apiRequest.tags = new HashMap<>();
            }
            this.request.tags.put(obj, obj2);
            return this;
        }

        public Builder timeout(int i10) {
            this.request.timeout = i10;
            return this;
        }

        public Builder userInteraction() {
            this.request.userInteraction = true;
            return this;
        }

        public Builder verbose() {
            this.request.verbose = true;
            return this;
        }

        public Builder verify(int i10) {
            this.request.verify = i10;
            return this;
        }

        Builder(ApiRequest apiRequest) {
            this.communityId = -1;
            this.request = apiRequest;
        }

        public Builder body(JSONObject jSONObject) {
            this.request.body = jSONObject;
            return this;
        }

        public Builder contentTypeMultiPart() {
            post();
            ApiRequest apiRequest = this.request;
            if (apiRequest.boundary == null) {
                apiRequest.boundary = UUID.randomUUID().toString();
            }
            this.request.contentType = "multipart/form-data;boundary=" + this.request.boundary;
            return this;
        }

        public Builder body(byte[] bArr) {
            this.request.body = bArr;
            return this;
        }

        public Builder headers(String... strArr) {
            ApiRequest apiRequest = this.request;
            if (apiRequest.headers == null) {
                apiRequest.headers = new ArrayList(4);
            }
            for (int i10 = 0; i10 < strArr.length; i10 += 2) {
                this.request.headers.add(new NameValuePair(strArr[i10], strArr[i10 + 1]));
            }
            return this;
        }

        public Builder body(File file) {
            this.request.body = file;
            return this;
        }

        public Builder body(InputStream inputStream) {
            if (inputStream != null && !inputStream.markSupported()) {
                throw new IllegalArgumentException();
            }
            this.request.body = inputStream;
            return this;
        }
    }

    public static class FormPart extends MultiPart {
        private String value;

        public byte[] getData() {
            return this.value.getBytes();
        }

        public FormPart(String str, String str2) {
            super(str);
            this.value = str2;
        }

        @Override // com.narvii.util.http.ApiRequest.MultiPart
        public /* bridge */ /* synthetic */ String getName() {
            return super.getName();
        }
    }

    public Object body() {
        return this.body;
    }

    public String contentType() {
        return this.contentType;
    }

    public int getCid() {
        return this.cid;
    }

    public HashMap<Object, Object> getTags() {
        return this.tags;
    }

    public List<NameValuePair> headers() {
        return this.headers;
    }

    public int method() {
        return this.method;
    }

    public Integer retry() {
        return this.retry;
    }

    public Object tag() {
        return this.tag;
    }

    public int timeout() {
        return this.timeout;
    }

    public String url() {
        return this.url;
    }

    public static class FilePart extends MultiPart {
        private File file;

        public File getFile() {
            return this.file;
        }

        public FilePart(String str, File file) {
            super(str);
            this.file = file;
        }

        @Override // com.narvii.util.http.ApiRequest.MultiPart
        public /* bridge */ /* synthetic */ String getName() {
            return super.getName();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static abstract class MultiPart {
        private String name;

        public String getName() {
            return this.name;
        }

        public MultiPart(String str) {
            this.name = str;
        }
    }

    public static Builder builder() {
        return new Builder();
    }

    public boolean contentMultiPart() {
        String str = this.contentType;
        return str != null && str.startsWith("multipart/form-data");
    }

    public Builder edit() {
        ApiRequest apiRequest = new ApiRequest();
        apiRequest.method = this.method;
        apiRequest.url = this.url;
        apiRequest.headers = this.headers;
        apiRequest.body = this.body;
        apiRequest.contentType = this.contentType;
        apiRequest.timeout = this.timeout;
        apiRequest.signature = this.signature;
        apiRequest.retry = this.retry;
        apiRequest.tag = this.tag;
        apiRequest.tags = this.tags;
        apiRequest.deleteBodyAfterDone = this.deleteBodyAfterDone;
        return new Builder(apiRequest);
    }

    public boolean isTagInvalid() {
        return tagBoolean("_invalid", false);
    }

    public Object tag(Object obj) {
        HashMap<Object, Object> map = this.tags;
        if (map == null) {
            return null;
        }
        return map.get(obj);
    }

    public void tagInvalid() {
        tag("_invalid", Boolean.TRUE);
    }

    public String toString() {
        int i10 = this.method;
        if (i10 == 0) {
            return "GET " + this.url;
        }
        if (i10 != 1) {
            if (i10 != 3) {
                return this.url;
            }
            return "DELETE " + this.url;
        }
        StringBuilder sb = new StringBuilder("POST ");
        sb.append(this.url);
        Object obj = this.body;
        if (obj instanceof byte[]) {
            sb.append(" [");
            sb.append(((byte[]) this.body).length);
            sb.append(" bytes]");
        } else if (obj instanceof File) {
            File file = (File) obj;
            sb.append(" ");
            sb.append(file.getName());
            sb.append(" [");
            sb.append(file.length());
            sb.append(" bytes]");
        } else if (obj instanceof ObjectNode) {
            ObjectNode objectNodeDeepCopy = (ObjectNode) obj;
            JsonNode jsonNode = objectNodeDeepCopy.get("secret");
            if (jsonNode != null) {
                objectNodeDeepCopy = objectNodeDeepCopy.deepCopy();
                String strValueOf = String.valueOf(jsonNode.asText());
                int iIndexOf = strValueOf.indexOf(32);
                String str = "****";
                if (iIndexOf > 0 && iIndexOf < 3) {
                    str = strValueOf.substring(0, iIndexOf + 1) + "****";
                }
                objectNodeDeepCopy.put("secret", str);
            }
            sb.append(" ");
            sb.append(objectNodeDeepCopy);
        } else if (obj != null) {
            sb.append(" ");
            sb.append(this.body);
        }
        return sb.toString();
    }

    protected ApiRequest() {
    }

    public void tag(Object obj, Object obj2) {
        if (this.tags == null) {
            this.tags = new HashMap<>();
        }
        this.tags.put(obj, obj2);
    }

    public boolean tagBoolean(Object obj, boolean z6) {
        Object objTag = tag(obj);
        if (objTag instanceof Boolean) {
            return ((Boolean) objTag).booleanValue();
        }
        return z6;
    }

    public int tagInt(Object obj, int i10) {
        Object objTag = tag(obj);
        if (objTag instanceof Integer) {
            return ((Integer) objTag).intValue();
        }
        return i10;
    }
}
