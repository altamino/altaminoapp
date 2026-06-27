package com.narvii.share;

import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.provider.Telephony;
import android.support.v4.util.LruCache;
import android.text.TextUtils;
import com.google.android.exoplayer2.C;
import com.narvii.app.NVContext;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.model.Feed;
import com.narvii.model.NVObject;
import com.narvii.model.User;
import com.narvii.model.api.ApiResponse;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.Callback;
import com.narvii.util.NVToast;
import com.narvii.util.PackageUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiResponseListener;
import com.narvii.util.http.ApiService;
import com.narvii.util.http.NameValuePair;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* loaded from: classes3.dex */
public class ShareLinkHelper {
    public static final int LINK_TRANSLATION_TARGET_DEFAULT = 1;
    public static final int LINK_TRANSLATION_TARGET_FANCLUB = 10;
    public static final int LINK_TRANSLATION_TARGET_STORY_FULLSCREEN = 11;
    public static final int SHARE_TO_CLIPBOARD = 241;
    public static final int SHARE_TO_EMAIL = 1;
    public static final int SHARE_TO_FACEBOOK = 10;
    public static final int SHARE_TO_INSTAGRAM = 13;
    public static final int SHARE_TO_OTHERS = 255;
    public static final int SHARE_TO_SMS = 2;
    public static final int SHARE_TO_TUMBLR = 12;
    public static final int SHARE_TO_TWITTER = 11;
    static final LruCache<String, LinkInfoV2> cache = new LruCache<>(16);
    static final LruCache<String, LinkInfoV2> userProfileCache = new LruCache<>(8);
    protected NVContext context;
    public boolean sbb;
    ShareCallback shareCallback;
    protected String shareCommunitySubject;
    protected String shareCommunityText;
    protected String shareSource;
    private final HashMap<String, ApiRequest> running = new HashMap<>();
    private final HashMap<String, ArrayList<Callback<LinkInfoV2>>> callbacks = new HashMap<>();
    protected Uri shareUri = null;

    public interface ShareCallback {
        void onShareFailed(int i);

        void onShareSuccessful(int i);
    }

    public ShareLinkHelper(NVContext nVContext) {
        this.context = nVContext;
    }

    public void setShareUri(Uri uri) {
        this.shareUri = uri;
    }

    public void setCallbacks(ShareCallback shareCallback) {
        this.shareCallback = shareCallback;
    }

    private LinkInfoV2 getCachedLinkInfo(NVObject nVObject, int i) {
        if (nVObject == null) {
            return null;
        }
        if (nVObject instanceof User) {
            return userProfileCache.get(getCacheId(nVObject, i, true));
        }
        if (nVObject.id() == null) {
            return null;
        }
        return cache.get(getCacheId(nVObject, i, false));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cacheLinkInfo(NVObject nVObject, int i, LinkInfoV2 linkInfoV2) {
        if (nVObject == null) {
            return;
        }
        if (nVObject instanceof User) {
            if (((User) nVObject).isGlobal) {
                return;
            }
            userProfileCache.put(getCacheId(nVObject, i, true), linkInfoV2);
        } else if (nVObject.id() != null) {
            cache.put(getCacheId(nVObject, i, false), linkInfoV2);
        }
    }

    private String getCacheId(NVObject nVObject, int i, boolean z) {
        if (z) {
            return "x" + ((ConfigService) this.context.getService("config")).getCommunityId() + "_" + i + "_" + nVObject.id();
        }
        return i + "_" + nVObject.id();
    }

    public void share(ShareLink shareLink, int i) {
        Context context = this.context.getContext();
        if (i == 1) {
            if (!shareToEmail(shareLink)) {
                NVToast.makeText(context, R.string.share_fail, 0).show();
                ShareCallback shareCallback = this.shareCallback;
                if (shareCallback != null) {
                    shareCallback.onShareFailed(1);
                    return;
                }
                return;
            }
            ShareCallback shareCallback2 = this.shareCallback;
            if (shareCallback2 != null) {
                shareCallback2.onShareSuccessful(1);
                return;
            }
            return;
        }
        if (i == 2) {
            if (!shareToSms(shareLink)) {
                NVToast.makeText(context, R.string.share_fail, 0).show();
                ShareCallback shareCallback3 = this.shareCallback;
                if (shareCallback3 != null) {
                    shareCallback3.onShareFailed(2);
                    return;
                }
                return;
            }
            ShareCallback shareCallback4 = this.shareCallback;
            if (shareCallback4 != null) {
                shareCallback4.onShareSuccessful(2);
                return;
            }
            return;
        }
        if (i != 241) {
            switch (i) {
                case 10:
                    if (!shareToFacebook(shareLink)) {
                        NVToast.makeText(context, context.getString(R.string.share_app_not_installed, context.getString(R.string.share_facebook)), 0).show();
                        ShareCallback shareCallback5 = this.shareCallback;
                        if (shareCallback5 != null) {
                            shareCallback5.onShareFailed(10);
                            break;
                        }
                    } else {
                        ShareCallback shareCallback6 = this.shareCallback;
                        if (shareCallback6 != null) {
                            shareCallback6.onShareSuccessful(10);
                            break;
                        }
                    }
                    break;
                case 11:
                    if (!shareToTwitter(shareLink)) {
                        NVToast.makeText(context, context.getString(R.string.share_app_not_installed, context.getString(R.string.share_twitter)), 0).show();
                        ShareCallback shareCallback7 = this.shareCallback;
                        if (shareCallback7 != null) {
                            shareCallback7.onShareFailed(11);
                            break;
                        }
                    } else {
                        ShareCallback shareCallback8 = this.shareCallback;
                        if (shareCallback8 != null) {
                            shareCallback8.onShareSuccessful(11);
                            break;
                        }
                    }
                    break;
                case 12:
                    if (!shareToTumblr(shareLink)) {
                        NVToast.makeText(context, context.getString(R.string.share_app_not_installed, context.getString(R.string.share_tumblr)), 0).show();
                        ShareCallback shareCallback9 = this.shareCallback;
                        if (shareCallback9 != null) {
                            shareCallback9.onShareFailed(12);
                            break;
                        }
                    } else {
                        ShareCallback shareCallback10 = this.shareCallback;
                        if (shareCallback10 != null) {
                            shareCallback10.onShareSuccessful(12);
                            break;
                        }
                    }
                    break;
                case 13:
                    if (!shareToInstagram(shareLink)) {
                        NVToast.makeText(context, context.getString(R.string.share_app_not_installed, context.getString(R.string.share_instagram)), 0).show();
                        ShareCallback shareCallback11 = this.shareCallback;
                        if (shareCallback11 != null) {
                            shareCallback11.onShareFailed(13);
                            break;
                        }
                    } else {
                        ShareCallback shareCallback12 = this.shareCallback;
                        if (shareCallback12 != null) {
                            shareCallback12.onShareSuccessful(13);
                            break;
                        }
                    }
                    break;
                default:
                    shareToAll(shareLink);
                    break;
            }
            return;
        }
        if (shareToClipboard(shareLink)) {
            NVToast.makeText(context, R.string.share_copy_to_clipboard_success, 0).show();
            ShareCallback shareCallback13 = this.shareCallback;
            if (shareCallback13 != null) {
                shareCallback13.onShareSuccessful(241);
                return;
            }
            return;
        }
        NVToast.makeText(context, R.string.share_copy_to_clipboard_fail, 0).show();
        ShareCallback shareCallback14 = this.shareCallback;
        if (shareCallback14 != null) {
            shareCallback14.onShareFailed(241);
        }
    }

    protected ShareLink getLink(NVObject nVObject, LinkInfoV2 linkInfoV2, int i) {
        Context context = this.context.getContext();
        PackageUtils packageUtils = new PackageUtils(context);
        ShareLink shareLink = new ShareLink();
        shareLink.subject = getTitle(nVObject);
        shareLink.text = context.getString(R.string.share_template_1, packageUtils.getAppName());
        LinkInfo innerLinkInfo = linkInfoV2.getInnerLinkInfo();
        shareLink.url = innerLinkInfo != null ? innerLinkInfo.shareURLShortCode : null;
        if (i == 1) {
            shareLink.subject = "hi";
            shareLink.text = getTitle(nVObject);
            shareLink.url = innerLinkInfo != null ? innerLinkInfo.shareURLFullPath : null;
        } else if (i == 2) {
            shareLink.text = getTitle(nVObject);
        }
        return shareLink;
    }

    protected String joinTextWithUrl(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            return str2 == null ? "" : str2;
        }
        if (str2 == null || str.contains(str2)) {
            return str;
        }
        return str + str3 + str2;
    }

    protected boolean shareToEmail(ShareLink shareLink) {
        try {
            return new ShareUtils(this.context).shareEmail(null, shareLink.subject, joinTextWithUrl(shareLink.text, shareLink.url, "\n"), this.shareUri, this.context.getContext().getString(R.string.share_chooser_link));
        } catch (Exception unused) {
            return false;
        }
    }

    protected boolean shareToSms(ShareLink shareLink) {
        try {
            String strJoinTextWithUrl = joinTextWithUrl(shareLink.text, shareLink.url, "\n");
            if (Build.VERSION.SDK_INT >= 19) {
                String defaultSmsPackage = Telephony.Sms.getDefaultSmsPackage(this.context.getContext());
                Intent intent = new Intent("android.intent.action.SEND");
                intent.putExtra("android.intent.extra.STREAM", this.shareUri);
                intent.setType("image/*");
                intent.putExtra("android.intent.extra.TEXT", strJoinTextWithUrl);
                if (defaultSmsPackage != null) {
                    intent.setPackage(defaultSmsPackage);
                }
                this.context.startActivity(intent);
                return true;
            }
            Intent intent2 = new Intent("android.intent.action.VIEW");
            intent2.setData(Uri.parse("sms:"));
            intent2.putExtra("sms_body", strJoinTextWithUrl);
            if (this.shareUri != null) {
                intent2.putExtra("android.intent.extra.STREAM", this.shareUri);
            }
            intent2.setType("image/*");
            this.context.startActivity(intent2);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private boolean shareToFacebook(ShareLink shareLink) {
        boolean z;
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", shareLink.url);
        Iterator<ResolveInfo> it = this.context.getContext().getPackageManager().queryIntentActivities(intent, 0).iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            ResolveInfo next = it.next();
            if (next.activityInfo.packageName.toLowerCase(Locale.US).startsWith("com.facebook.katana")) {
                intent.setPackage(next.activityInfo.packageName);
                z = true;
                break;
            }
        }
        if (!z) {
            return false;
        }
        intent.putExtra("_noMapping", true);
        this.context.startActivity(intent);
        return true;
    }

    private boolean shareToTwitter(ShareLink shareLink) {
        boolean z;
        String strJoinTextWithUrl = joinTextWithUrl(shareLink.text, shareLink.url, "\n");
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("*/*");
        intent.putExtra("android.intent.extra.TEXT", strJoinTextWithUrl);
        intent.putExtra("android.intent.extra.STREAM", this.shareUri);
        Iterator<ResolveInfo> it = this.context.getContext().getPackageManager().queryIntentActivities(intent, 0).iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            ResolveInfo next = it.next();
            if (next.activityInfo.packageName.toLowerCase(Locale.US).startsWith("com.twitter")) {
                intent.setPackage(next.activityInfo.packageName);
                z = true;
                break;
            }
        }
        if (!z) {
            return false;
        }
        intent.putExtra("_noMapping", true);
        this.context.startActivity(intent);
        return true;
    }

    private boolean shareToTumblr(ShareLink shareLink) {
        boolean z;
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", joinTextWithUrl(shareLink.text, shareLink.url, "\n"));
        intent.putExtra("android.intent.extra.SUBJECT", shareLink.subject);
        if (this.shareUri != null) {
            intent.setType("image/*");
            intent.putExtra("android.intent.extra.STREAM", this.shareUri);
        }
        Iterator<ResolveInfo> it = this.context.getContext().getPackageManager().queryIntentActivities(intent, 0).iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            ResolveInfo next = it.next();
            if (next.activityInfo.packageName.toLowerCase(Locale.US).startsWith("com.tumblr")) {
                intent.setPackage(next.activityInfo.packageName);
                z = true;
                break;
            }
        }
        if (!z) {
            return false;
        }
        intent.putExtra("_noMapping", true);
        this.context.startActivity(intent);
        return true;
    }

    private boolean shareToClipboard(ShareLink shareLink) {
        try {
            ((ClipboardManager) this.context.getContext().getSystemService("clipboard")).setText(shareLink.url);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private void shareToAll(ShareLink shareLink) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        String str = shareLink.subject;
        String strJoinTextWithUrl = joinTextWithUrl(shareLink.text, shareLink.url, ": ");
        intent.putExtra("android.intent.extra.SUBJECT", str);
        intent.putExtra("android.intent.extra.TEXT", strJoinTextWithUrl);
        intent.putExtra("android.intent.extra.STREAM", this.shareUri);
        intent.putExtra("_noMapping", true);
        this.context.startActivity(intent);
    }

    protected boolean shareToInstagram(ShareLink shareLink) {
        boolean z;
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("image/*");
        intent.putExtra("android.intent.extra.TEXT", shareLink.url);
        intent.putExtra("android.intent.extra.STREAM", this.shareUri);
        Iterator<ResolveInfo> it = this.context.getContext().getPackageManager().queryIntentActivities(intent, 0).iterator();
        while (true) {
            if (!it.hasNext()) {
                z = false;
                break;
            }
            ResolveInfo next = it.next();
            if (next.activityInfo.packageName.toLowerCase(Locale.US).startsWith("com.instagram.android")) {
                intent.setPackage(next.activityInfo.packageName);
                z = true;
                break;
            }
        }
        if (!z) {
            return false;
        }
        intent.putExtra("_noMapping", true);
        this.context.startActivity(intent);
        return true;
    }

    public void startLinkTranslation(final NVObject nVObject, final Callback<LinkInfoV2> callback, final int i) {
        if (nVObject == null) {
            if (callback != null) {
                callback.call(null);
                return;
            }
            return;
        }
        LinkInfoV2 cachedLinkInfo = getCachedLinkInfo(nVObject, i);
        if (cachedLinkInfo != null) {
            if (callback != null) {
                callback.call(cachedLinkInfo);
                return;
            }
            return;
        }
        if (callback != null) {
            ArrayList<Callback<LinkInfoV2>> arrayList = this.callbacks.get(nVObject.id());
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.callbacks.put(nVObject.id(), arrayList);
            }
            arrayList.add(callback);
        }
        if (this.running.containsKey(nVObject.id())) {
            return;
        }
        int communityId = ((ConfigService) this.context.getService("config")).getCommunityId();
        if (communityId == 0 && (nVObject instanceof Feed)) {
            communityId = ((Feed) nVObject).ndcId;
        }
        ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().post().path("/link-resolution").param(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, nVObject.id()).param("targetCode", Integer.valueOf(i == 0 ? 1 : i)).param(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, Integer.valueOf(nVObject.objectType())).scopeCommunityId(communityId).build(), new ApiResponseListener<LinkV2TranslationResponse>(LinkV2TranslationResponse.class) { // from class: com.narvii.share.ShareLinkHelper.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, LinkV2TranslationResponse linkV2TranslationResponse) throws Exception {
                ShareLinkHelper.this.running.remove(nVObject.id());
                ShareLinkHelper.this.cacheLinkInfo(nVObject, i, linkV2TranslationResponse.linkInfoV2);
                ArrayList arrayList2 = (ArrayList) ShareLinkHelper.this.callbacks.get(nVObject.id());
                if (arrayList2 != null) {
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        ((Callback) it.next()).call(linkV2TranslationResponse.linkInfoV2);
                    }
                }
                ShareLinkHelper.this.callbacks.remove(nVObject.id());
            }

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i2, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
                if (callback != null) {
                    NVToast.makeText(ShareLinkHelper.this.context.getContext(), str, 0).show();
                }
                ShareLinkHelper.this.running.remove(nVObject.id());
                ArrayList arrayList2 = (ArrayList) ShareLinkHelper.this.callbacks.get(nVObject.id());
                if (arrayList2 != null) {
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        ((Callback) it.next()).call(null);
                    }
                }
                ShareLinkHelper.this.callbacks.remove(nVObject.id());
            }
        });
    }

    protected void abort(NVObject nVObject) {
        ApiRequest apiRequest = this.running.get(nVObject.id());
        if (apiRequest != null) {
            ((ApiService) this.context.getService("api")).abort(apiRequest);
        }
        this.running.remove(nVObject.id());
        this.callbacks.remove(nVObject.id());
    }

    private String urlEncode(String str) {
        try {
            return URLEncoder.encode(str, C.UTF8_NAME);
        } catch (Exception unused) {
            return str;
        }
    }

    private String getTitle(NVObject nVObject) {
        if (nVObject instanceof Feed) {
            return ((Feed) nVObject).title();
        }
        try {
            return (String) nVObject.getClass().getField("title").get(nVObject);
        } catch (Exception unused) {
            return "";
        }
    }
}
