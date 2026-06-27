package com.narvii.util.http;

import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ObjectNode;
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

/* loaded from: classes.dex */
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

    protected ApiRequest() {
    }

    public int method() {
        return this.method;
    }

    public String url() {
        return this.url;
    }

    public List<NameValuePair> headers() {
        return this.headers;
    }

    public Object body() {
        return this.body;
    }

    public String contentType() {
        return this.contentType;
    }

    public int timeout() {
        return this.timeout;
    }

    public Integer retry() {
        return this.retry;
    }

    public Object tag() {
        return this.tag;
    }

    public Object tag(Object obj) {
        HashMap<Object, Object> map = this.tags;
        if (map == null) {
            return null;
        }
        return map.get(obj);
    }

    public void tag(Object obj, Object obj2) {
        if (this.tags == null) {
            this.tags = new HashMap<>();
        }
        this.tags.put(obj, obj2);
    }

    public void tagInvalid() {
        tag("_invalid", true);
    }

    public boolean isTagInvalid() {
        return tagBoolean("_invalid", false);
    }

    public HashMap<Object, Object> getTags() {
        return this.tags;
    }

    public int tagInt(Object obj, int i) {
        Object objTag = tag(obj);
        return objTag instanceof Integer ? ((Integer) objTag).intValue() : i;
    }

    public boolean tagBoolean(Object obj, boolean z) {
        Object objTag = tag(obj);
        return objTag instanceof Boolean ? ((Boolean) objTag).booleanValue() : z;
    }

    public boolean contentMultiPart() {
        String str = this.contentType;
        return str != null && str.startsWith(CONTENT_TYPE_MULTIPART);
    }

    public int getCid() {
        return this.cid;
    }

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

        Builder(ApiRequest apiRequest) {
            this.communityId = -1;
            this.request = apiRequest;
        }

        public Builder post() {
            this.request.method = 1;
            return this;
        }

        public Builder delete() {
            this.request.method = 3;
            return this;
        }

        public Builder silent() {
            this.request.silent = true;
            return this;
        }

        public Builder scopeCommunityId(int i) {
            this.scopeCid = i;
            this.communityId = 0;
            this.request.cid = i;
            return this;
        }

        public Builder path(String str) {
            char cCharAt;
            if (this.request.url != null) {
                throw new RuntimeException("unable to set path, url is already set");
            }
            this.path = new StringBuilder(str);
            int iIndexOf = str.indexOf("/null");
            if (iIndexOf > 0) {
                int i = iIndexOf + 5;
                boolean z = true;
                if (i < str.length() && (cCharAt = str.charAt(i)) != '/' && cCharAt != '?') {
                    z = false;
                }
                if (z) {
                    Log.e("null in url: " + str);
                }
            }
            return this;
        }

        public Builder https() {
            this.protocol = 1;
            return this;
        }

        public Builder staticPath() {
            this.segment = 1;
            return this;
        }

        public Builder verbose() {
            this.request.verbose = true;
            return this;
        }

        public Builder communityId(int i) {
            this.communityId = i;
            this.request.cid = i;
            return this;
        }

        public Builder global() {
            this.communityId = 0;
            return this;
        }

        public Builder chatServer() {
            this.server = 1;
            return this;
        }

        public Builder mediaServer() {
            this.server = 2;
            return this;
        }

        public Builder selfHandleErrorCode(int i) {
            tag("_error_" + i, true);
            return this;
        }

        public Builder userInteraction() {
            this.request.userInteraction = true;
            return this;
        }

        public Builder _url(String str) {
            char cCharAt;
            if (this.path != null) {
                throw new RuntimeException("unable to set url, path is already set");
            }
            this.request.url = str;
            int iIndexOf = str.indexOf("/null");
            if (iIndexOf > 0) {
                int i = iIndexOf + 5;
                boolean z = true;
                if (i < str.length() && (cCharAt = str.charAt(i)) != '/' && cCharAt != '?') {
                    z = false;
                }
                if (z) {
                    Log.e("null in url: " + str);
                }
            }
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

        public Builder headers(String... strArr) {
            ApiRequest apiRequest = this.request;
            if (apiRequest.headers == null) {
                apiRequest.headers = new ArrayList(4);
            }
            int i = 0;
            while (i < strArr.length) {
                String str = strArr[i];
                int i2 = i + 1;
                this.request.headers.add(new NameValuePair(str, strArr[i2]));
                i = i2 + 1;
            }
            return this;
        }

        public Builder addHeaderField(String str, String str2) {
            return (str == null || str2 == null) ? this : headers(str, str2);
        }

        public Builder contentType(String str) {
            this.request.contentType = str;
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

        public Builder contentTypeBinary() {
            this.request.contentType = ApiRequest.CONTENT_TYPE_BINARY;
            return this;
        }

        public Builder body(String str) {
            this.request.body = str;
            return this;
        }

        public Builder body(ObjectNode objectNode) {
            this.request.body = objectNode;
            return this;
        }

        public Builder body(JSONObject jSONObject) {
            this.request.body = jSONObject;
            return this;
        }

        public Builder body(byte[] bArr) {
            this.request.body = bArr;
            return this;
        }

        public Builder body(File file) {
            this.request.body = file;
            return this;
        }

        public Builder deleteBodyAfterDone() {
            this.request.deleteBodyAfterDone = true;
            return this;
        }

        public Builder body(InputStream inputStream) {
            if (inputStream != null && !inputStream.markSupported()) {
                throw new IllegalArgumentException();
            }
            this.request.body = inputStream;
            return this;
        }

        public Builder timeout(int i) {
            this.request.timeout = i;
            return this;
        }

        public Builder retry(int i) {
            this.request.retry = Integer.valueOf(i);
            return this;
        }

        @Deprecated
        public Builder signature(int i) {
            this.request.signature = i;
            return this;
        }

        public Builder verify(int i) {
            this.request.verify = i;
            return this;
        }

        public Builder tag(Object obj) {
            this.request.tag = obj;
            return this;
        }

        public Builder addPart(MultiPart multiPart) {
            ApiRequest apiRequest = this.request;
            if (apiRequest.parts == null) {
                apiRequest.parts = new ArrayList();
            }
            this.request.parts.add(multiPart);
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

        public Builder param(String str, Object obj) {
            StringBuilder sb;
            ApiRequest apiRequest = this.request;
            if (apiRequest.method == 1) {
                if (ApiRequest.CONTENT_TYPE_URL_FORM.equals(apiRequest.contentType)) {
                    Object obj2 = this.request.body;
                    if (obj2 == null) {
                        sb = new StringBuilder();
                    } else if (obj2 instanceof String) {
                        sb = new StringBuilder((String) obj2);
                    } else if (obj2 instanceof StringBuilder) {
                        sb = (StringBuilder) obj2;
                    } else {
                        throw new IllegalStateException("unable to append url form, body is not a string");
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
                    } else if (obj3 instanceof JSONObject) {
                        try {
                            ((JSONObject) obj3).put(str, obj);
                        } catch (Exception unused) {
                        }
                    } else {
                        throw new IllegalStateException("unable to append params on " + this.request.body.getClass());
                    }
                }
            } else {
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
                    if (str2 != null) {
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
                    } else {
                        throw new RuntimeException("you must set the path or url before you use ApiRequest.Builder.params(...)");
                    }
                }
            }
            return this;
        }

        public ApiRequest build() {
            if (this.path != null) {
                StringBuilder sb = new StringBuilder();
                if (this.protocol == 1) {
                    sb.append("https://");
                } else {
                    sb.append("http://");
                }
                sb.append("service.altamino.top");
                if (this.segment == 1) {
                    sb.append("/static");
                } else {
                    sb.append("/api");
                }
                sb.append("/v1");
                int i = this.communityId;
                if (i < 0) {
                    sb.append("/xx");
                } else if (i == 0) {
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
                    sb.append("/");
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
    }

    public static Builder builder() {
        return new Builder();
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

    public String toString() {
        int i = this.method;
        if (i == 0) {
            return "GET " + this.url;
        }
        if (i != 1) {
            if (i == 3) {
                return "DELETE " + this.url;
            }
            return this.url;
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

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes3.dex */
    public static abstract class MultiPart {
        private String name;

        public MultiPart(String str) {
            this.name = str;
        }

        public String getName() {
            return this.name;
        }
    }

    /* loaded from: classes3.dex */
    public static class FormPart extends MultiPart {
        private String value;

        @Override // com.narvii.util.http.ApiRequest.MultiPart
        public /* bridge */ /* synthetic */ String getName() {
            return super.getName();
        }

        public FormPart(String str, String str2) {
            super(str);
            this.value = str2;
        }

        public byte[] getData() {
            return this.value.getBytes();
        }
    }

    /* loaded from: classes3.dex */
    public static class FilePart extends MultiPart {
        private File file;

        @Override // com.narvii.util.http.ApiRequest.MultiPart
        public /* bridge */ /* synthetic */ String getName() {
            return super.getName();
        }

        public FilePart(String str, File file) {
            super(str);
            this.file = file;
        }

        public File getFile() {
            return this.file;
        }
    }
}
