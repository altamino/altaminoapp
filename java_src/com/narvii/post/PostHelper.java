package com.narvii.post;

import android.app.Activity;
import android.os.SystemClock;
import com.fasterxml.jackson.databind.JsonNode;
import com.fasterxml.jackson.databind.node.ArrayNode;
import com.fasterxml.jackson.databind.node.JsonNodeType;
import com.fasterxml.jackson.databind.node.ObjectNode;
import com.fasterxml.jackson.databind.node.TextNode;
import com.narvii.app.NVContext;
import com.narvii.comment.list.CommentListFragment;
import com.narvii.model.Media;
import com.narvii.model.api.ApiResponse;
import com.narvii.photos.PhotoManager;
import com.narvii.photos.PhotoUploadListener;
import com.narvii.photos.PhotoUploadSpec;
import com.narvii.photos.VideoUploadListener;
import com.narvii.photos.VideoUploadSpec;
import com.narvii.util.JacksonUtils;
import com.narvii.util.ParamUtils;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Future;

/* loaded from: classes3.dex */
public class PostHelper {
    ApiService api;
    List<Future> cancelables;
    boolean canceled;
    NVContext context;
    String defaultPhotoUploadTarget;
    PostListener listener;
    PhotoManager photo;
    int photoIndex;
    int photoProgress;
    ArrayList<String> photos;
    protected PostObject post;
    ObjectNode postJson;
    int postProgres;
    ApiRequest postRequest;
    ApiRequest request;
    Class<? extends ApiResponse> respClazz;
    long startTime;
    HashMap<String, String> uploadedUrlMap;
    int videoIndex;
    ArrayList<String> videos;
    private final Runnable rStep = new Runnable() { // from class: com.narvii.post.PostHelper.1
        @Override // java.lang.Runnable
        public void run() {
            PostHelper.this.step();
        }
    };
    private final PhotoUploadListener photoUploadListener = new PhotoUploadListener() { // from class: com.narvii.post.PostHelper.3
        @Override // com.narvii.photos.PhotoUploadListener
        public void onFinish(String str, String str2) {
            PostHelper.this.uploadedUrlMap.put(str, str2);
            PostHelper postHelper = PostHelper.this;
            postHelper.photoIndex++;
            postHelper.photoProgress = 0;
            postHelper.step();
        }

        @Override // com.narvii.photos.PhotoUploadListener
        public void onFail(String str, int i, String str2, Throwable th) {
            PostHelper postHelper = PostHelper.this;
            if (postHelper.canceled || postHelper.listener == null) {
                return;
            }
            String str3 = "IMG " + PostHelper.this.photoIndex;
            if (str2 != null) {
                str3 = str3 + ": " + str2;
            }
            PostHelper postHelper2 = PostHelper.this;
            postHelper2.listener.onPostFail(postHelper2, i, str3, th);
        }

        @Override // com.narvii.photos.PhotoUploadListener
        public void onProgress(String str, int i, int i2) {
            PostListener postListener;
            PostHelper postHelper = PostHelper.this;
            postHelper.photoProgress = (i * 100) / i2;
            if (postHelper.canceled || (postListener = postHelper.listener) == null) {
                return;
            }
            postListener.onPostProgress(postHelper, postHelper.getProgress(), PostHelper.this.getProgressTotal());
        }
    };
    private final VideoUploadListener videoUploadListener = new VideoUploadListener() { // from class: com.narvii.post.PostHelper.4
        @Override // com.narvii.photos.VideoUploadListener
        public void onFinish(String str, Media media) {
            PostHelper.this.uploadedUrlMap.put(str, media.url);
            PostHelper postHelper = PostHelper.this;
            postHelper.uploadedUrlMap.put(postHelper.photo.getVideoCoverUrl(str), media.coverImage);
            PostHelper postHelper2 = PostHelper.this;
            postHelper2.videoIndex++;
            postHelper2.photoProgress = 0;
            postHelper2.step();
        }

        @Override // com.narvii.photos.VideoUploadListener
        public void onFail(String str, int i, String str2, Throwable th) {
            PostHelper postHelper = PostHelper.this;
            if (postHelper.canceled || postHelper.listener == null) {
                return;
            }
            String str3 = "VIDEO " + PostHelper.this.photoIndex;
            if (str2 != null) {
                str3 = str3 + ": " + str2;
            }
            PostHelper postHelper2 = PostHelper.this;
            postHelper2.listener.onPostFail(postHelper2, i, str3, th);
        }

        @Override // com.narvii.photos.VideoUploadListener
        public void onProgress(String str, int i, int i2) {
            PostListener postListener;
            PostHelper postHelper = PostHelper.this;
            double d = i;
            Double.isNaN(d);
            double d2 = i2;
            Double.isNaN(d2);
            postHelper.photoProgress = (int) ((d * 100.0d) / d2);
            if (postHelper.canceled || (postListener = postHelper.listener) == null) {
                return;
            }
            postListener.onPostProgress(postHelper, postHelper.getProgress(), PostHelper.this.getProgressTotal());
        }
    };

    protected boolean keepPng(String str) {
        return false;
    }

    public PostHelper(NVContext nVContext) {
        this.context = nVContext;
        this.api = (ApiService) nVContext.getService("api");
        this.photo = (PhotoManager) nVContext.getService("photo");
    }

    public void setPostListener(PostListener postListener) {
        this.listener = postListener;
    }

    public void setDefaultPhotoUploadTarget(String str) {
        this.defaultPhotoUploadTarget = str;
    }

    protected String getPhotoUploadTarget(String str) {
        return this.defaultPhotoUploadTarget;
    }

    public void startPost(PostObject postObject, ApiRequest apiRequest) {
        startPost(postObject, apiRequest, ApiResponse.class);
    }

    public void startPost(PostObject postObject, ApiRequest apiRequest, Class<? extends ApiResponse> cls) {
        this.post = postObject;
        this.request = apiRequest;
        this.respClazz = cls;
        this.cancelables = new ArrayList();
        this.postJson = postObject.postBody(this.context);
        this.photos = new ArrayList<>();
        rSearchPhoto(this.postJson, this.photos);
        this.videos = new ArrayList<>();
        Iterator<String> it = this.photos.iterator();
        while (it.hasNext()) {
            String next = it.next();
            if (this.photo.isVideo(next)) {
                it.remove();
                this.videos.add(next);
            } else if (this.photo.isVideoCover(next)) {
                it.remove();
            }
        }
        this.photoIndex = 0;
        this.postProgres = 0;
        this.photoProgress = 0;
        this.uploadedUrlMap = new HashMap<>();
        this.startTime = SystemClock.elapsedRealtime();
        PostListener postListener = this.listener;
        if (postListener != null) {
            postListener.onPostStart(this);
        }
        postStep(0);
    }

    public void cancel() {
        this.canceled = true;
        Utils.handler.removeCallbacks(this.rStep);
        Iterator<Future> it = this.cancelables.iterator();
        while (it.hasNext()) {
            it.next().cancel(true);
        }
        this.api.abort(this.postRequest);
    }

    void postStep(int i) {
        Utils.handler.removeCallbacks(this.rStep);
        Utils.handler.postDelayed(this.rStep, i);
    }

    void step() {
        if (this.canceled) {
            return;
        }
        if (this.photoIndex < this.photos.size()) {
            String str = this.photos.get(this.photoIndex);
            String uploadedUrl = this.photo.getUploadedUrl(str);
            if (uploadedUrl != null) {
                this.uploadedUrlMap.put(str, uploadedUrl);
                this.photoIndex++;
                postStep(100);
                return;
            } else if (keepPng(str)) {
                this.photo.upload(PhotoUploadSpec.builder(str).target(getPhotoUploadTarget(str)).keepPng().build(), this.photoUploadListener);
                return;
            } else {
                this.photo.upload(str, getPhotoUploadTarget(str), this.photoUploadListener);
                return;
            }
        }
        if (this.videoIndex < this.videos.size()) {
            String str2 = this.videos.get(this.videoIndex);
            String uploadedUrl2 = this.photo.getUploadedUrl(str2);
            if (uploadedUrl2 != null) {
                this.uploadedUrlMap.put(str2, uploadedUrl2);
                this.videoIndex++;
                postStep(100);
                return;
            } else {
                Future<Media> futureUploadVideo = this.photo.uploadVideo(VideoUploadSpec.builder(str2).target(getPhotoUploadTarget(str2)).build(), this.videoUploadListener);
                if (futureUploadVideo != null) {
                    this.cancelables.add(futureUploadVideo);
                    return;
                }
                return;
            }
        }
        ObjectNode objectNodeRReplacePhoto = rReplacePhoto(this.postJson, this.uploadedUrlMap);
        if (this.context.getContext() instanceof Activity) {
            Activity activity = (Activity) this.context.getContext();
            String stringParam = ParamUtils.getStringParam(activity, CommentListFragment.COMMENT_KEY_LOGGING_SOURCE);
            if (stringParam != null) {
                objectNodeRReplacePhoto.put("eventSource", stringParam);
            }
            String stringParam2 = ParamUtils.getStringParam(activity, CommentListFragment.COMMENT_KEY_LOGGING_ORIGIN);
            if (stringParam2 != null) {
                objectNodeRReplacePhoto.put("eventOrigin", stringParam2);
            }
        }
        NVContext nVContext = this.context;
        String ndcSubmitToken = nVContext instanceof BasePostActivity ? ((BasePostActivity) nVContext).getNdcSubmitToken() : null;
        ApiRequest.Builder builderEdit = this.request.edit();
        builderEdit.body(objectNodeRReplacePhoto);
        if (ndcSubmitToken != null) {
            builderEdit.addHeaderField("ndc-submit-token", ndcSubmitToken);
        }
        this.postRequest = builderEdit.build();
        this.api.exec(this.postRequest, new ApiResponseListener<ApiResponse>(this.respClazz) { // from class: com.narvii.post.PostHelper.2
            final Runnable updateProgress = new Runnable() { // from class: com.narvii.post.PostHelper.2.1
                @Override // java.lang.Runnable
                public void run() {
                    PostListener postListener;
                    PostHelper postHelper = PostHelper.this;
                    if (postHelper.canceled || (postListener = postHelper.listener) == null) {
                        return;
                    }
                    postListener.onPostProgress(postHelper, postHelper.getProgress(), PostHelper.this.getProgressTotal());
                }
            };

            @Override // com.narvii.util.http.ApiResponseListener
            public ApiResponse parseResponse(ApiRequest apiRequest, int i, List<NameValuePair> list, byte[] bArr) throws Exception {
                ApiResponse response = super.parseResponse(apiRequest, i, list, bArr);
                int progress = PostHelper.this.getProgress();
                long jMax = (int) (Math.max(0.4f, Math.min(1.0f, ((r4 - progress) * 1.2f) / PostHelper.this.getProgressTotal())) * 1000.0f);
                PostHelper.this.postProgres = 100;
                Utils.post(this.updateProgress);
                try {
                    Thread.sleep(jMax);
                } catch (InterruptedException unused) {
                }
                return response;
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, ApiResponse apiResponse) throws Exception {
                PostHelper postHelper = PostHelper.this;
                if (postHelper.canceled || postHelper.listener == null) {
                    return;
                }
                postHelper.postProgres = 100;
                Utils.handler.removeCallbacks(this.updateProgress);
                PostHelper postHelper2 = PostHelper.this;
                postHelper2.listener.onPostProgress(postHelper2, postHelper2.getProgress(), PostHelper.this.getProgressTotal());
                PostHelper postHelper3 = PostHelper.this;
                postHelper3.listener.onPostFinished(postHelper3, apiResponse);
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i, List<NameValuePair> list, String str3, ApiResponse apiResponse, Throwable th) {
                PostListener postListener;
                PostHelper postHelper = PostHelper.this;
                if (postHelper.canceled || (postListener = postHelper.listener) == null) {
                    return;
                }
                postListener.onPostFail(postHelper, i, str3, th);
            }
        });
    }

    public int getProgress() {
        return (this.photoIndex * 100) + (this.videoIndex * 100) + this.photoProgress + ((this.postProgres * 50) / 100);
    }

    public int getProgressTotal() {
        ArrayList<String> arrayList = this.photos;
        int size = (arrayList == null ? 0 : arrayList.size()) * 100;
        ArrayList<String> arrayList2 = this.videos;
        return size + ((arrayList2 != null ? arrayList2.size() : 0) * 100) + 50;
    }

    private void rSearchPhoto(JsonNode jsonNode, List<String> list) {
        Iterator<JsonNode> itElements = jsonNode.elements();
        while (itElements.hasNext()) {
            JsonNode next = itElements.next();
            int i = AnonymousClass5.$SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType[next.getNodeType().ordinal()];
            if (i == 1 || i == 2) {
                rSearchPhoto(next, list);
            } else if (i == 3 && next.asText().startsWith("photo://")) {
                list.add(next.asText());
            }
        }
    }

    /* renamed from: com.narvii.post.PostHelper$5, reason: invalid class name */
    static /* synthetic */ class AnonymousClass5 {
        static final /* synthetic */ int[] $SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType = new int[JsonNodeType.values().length];

        static {
            try {
                $SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType[JsonNodeType.ARRAY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType[JsonNodeType.OBJECT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType[JsonNodeType.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    private ObjectNode rReplacePhoto(ObjectNode objectNode, Map<String, String> map) {
        String str;
        ObjectNode objectNodeCreateObjectNode = JacksonUtils.createObjectNode();
        Iterator<Map.Entry<String, JsonNode>> itFields = objectNode.fields();
        while (itFields.hasNext()) {
            Map.Entry<String, JsonNode> next = itFields.next();
            JsonNode value = next.getValue();
            int i = AnonymousClass5.$SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType[value.getNodeType().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i == 3 && (str = map.get(value.asText())) != null) {
                        value = TextNode.valueOf(str);
                    }
                } else if (value instanceof ObjectNode) {
                    value = rReplacePhoto((ObjectNode) value, map);
                }
            } else if (value instanceof ArrayNode) {
                value = rReplacePhoto((ArrayNode) value, map);
            }
            objectNodeCreateObjectNode.put(next.getKey(), value);
        }
        return objectNodeCreateObjectNode;
    }

    private ArrayNode rReplacePhoto(ArrayNode arrayNode, Map<String, String> map) {
        String str;
        ArrayNode arrayNodeCreateArrayNode = JacksonUtils.createArrayNode();
        Iterator<JsonNode> itElements = arrayNode.elements();
        while (itElements.hasNext()) {
            JsonNode next = itElements.next();
            int i = AnonymousClass5.$SwitchMap$com$fasterxml$jackson$databind$node$JsonNodeType[next.getNodeType().ordinal()];
            if (i != 1) {
                if (i != 2) {
                    if (i == 3 && (str = map.get(next.asText())) != null) {
                        next = TextNode.valueOf(str);
                    }
                } else if (next instanceof ObjectNode) {
                    next = rReplacePhoto((ObjectNode) next, map);
                }
            } else if (next instanceof ArrayNode) {
                next = rReplacePhoto((ArrayNode) next, map);
            }
            arrayNodeCreateArrayNode.add(next);
        }
        return arrayNodeCreateArrayNode;
    }

    public PostObject getPost() {
        return this.post;
    }
}
