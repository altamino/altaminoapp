package com.narvii.share;

import android.content.ClipboardManager;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.provider.Telephony;
import android.text.TextUtils;
import androidx.collection.LruCache;
import androidx.webkit.internal.AssetHelper;
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
import com.safedk.android.utils.Logger;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes8.dex */
public class ShareLinkHelper {
    public static final int LINK_TRANSLATION_TARGET_DEFAULT = 1;
    public static final int LINK_TRANSLATION_TARGET_FANCLUB = 10;
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
        void onShareFailed(int i10);

        void onShareSuccessful(int i10);
    }

    private LinkInfoV2 getCachedLinkInfo(NVObject nVObject, int i10) {
        if (nVObject == null) {
            return null;
        }
        if (nVObject instanceof User) {
            return userProfileCache.get(getCacheId(nVObject, i10, true));
        }
        if (nVObject.id() == null) {
            return null;
        }
        return cache.get(getCacheId(nVObject, i10, false));
    }

    public static void safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(NVContext p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/app/NVContext;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    public void setCallbacks(ShareCallback shareCallback) {
        this.shareCallback = shareCallback;
    }

    public void setShareUri(Uri uri) {
        this.shareUri = uri;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cacheLinkInfo(NVObject nVObject, int i10, LinkInfoV2 linkInfoV2) {
        if (nVObject == null) {
            return;
        }
        if (nVObject instanceof User) {
            if (((User) nVObject).isGlobal) {
                return;
            }
            userProfileCache.put(getCacheId(nVObject, i10, true), linkInfoV2);
        } else if (nVObject.id() != null) {
            cache.put(getCacheId(nVObject, i10, false), linkInfoV2);
        }
    }

    private String getCacheId(NVObject nVObject, int i10, boolean z6) {
        if (!z6) {
            return i10 + "_" + nVObject.id();
        }
        return "x" + ((ConfigService) this.context.getService("config")).getCommunityId() + "_" + i10 + "_" + nVObject.id();
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

    private void shareToAll(ShareLink shareLink) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
        String str = shareLink.subject;
        String strJoinTextWithUrl = joinTextWithUrl(shareLink.text, shareLink.url, ": ");
        intent.putExtra("android.intent.extra.SUBJECT", str);
        intent.putExtra("android.intent.extra.TEXT", strJoinTextWithUrl);
        intent.putExtra("android.intent.extra.STREAM", this.shareUri);
        intent.putExtra("_noMapping", true);
        safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intent);
    }

    private boolean shareToClipboard(ShareLink shareLink) {
        try {
            ((ClipboardManager) this.context.getContext().getSystemService("clipboard")).setText(shareLink.url);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    private boolean shareToFacebook(ShareLink shareLink) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
        intent.putExtra("android.intent.extra.TEXT", shareLink.url);
        for (ResolveInfo resolveInfo : this.context.getContext().getPackageManager().queryIntentActivities(intent, 0)) {
            if (resolveInfo.activityInfo.packageName.toLowerCase(Locale.US).startsWith("com.facebook.katana")) {
                intent.setPackage(resolveInfo.activityInfo.packageName);
                intent.putExtra("_noMapping", true);
                safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intent);
                return true;
            }
        }
        return false;
    }

    private boolean shareToTumblr(ShareLink shareLink) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType(AssetHelper.DEFAULT_MIME_TYPE);
        intent.putExtra("android.intent.extra.TEXT", joinTextWithUrl(shareLink.text, shareLink.url, "\n"));
        intent.putExtra("android.intent.extra.SUBJECT", shareLink.subject);
        if (this.shareUri != null) {
            intent.setType("image/*");
            intent.putExtra("android.intent.extra.STREAM", this.shareUri);
        }
        for (ResolveInfo resolveInfo : this.context.getContext().getPackageManager().queryIntentActivities(intent, 0)) {
            if (resolveInfo.activityInfo.packageName.toLowerCase(Locale.US).startsWith("com.tumblr")) {
                intent.setPackage(resolveInfo.activityInfo.packageName);
                intent.putExtra("_noMapping", true);
                safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intent);
                return true;
            }
        }
        return false;
    }

    private boolean shareToTwitter(ShareLink shareLink) {
        String strJoinTextWithUrl = joinTextWithUrl(shareLink.text, shareLink.url, "\n");
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("*/*");
        intent.putExtra("android.intent.extra.TEXT", strJoinTextWithUrl);
        intent.putExtra("android.intent.extra.STREAM", this.shareUri);
        for (ResolveInfo resolveInfo : this.context.getContext().getPackageManager().queryIntentActivities(intent, 0)) {
            if (resolveInfo.activityInfo.packageName.toLowerCase(Locale.US).startsWith("com.twitter")) {
                intent.setPackage(resolveInfo.activityInfo.packageName);
                intent.putExtra("_noMapping", true);
                safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intent);
                return true;
            }
        }
        return false;
    }

    private String urlEncode(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (Exception unused) {
            return str;
        }
    }

    protected void abort(NVObject nVObject) {
        ApiRequest apiRequest = this.running.get(nVObject.id());
        if (apiRequest != null) {
            ((ApiService) this.context.getService("api")).abort(apiRequest);
        }
        this.running.remove(nVObject.id());
        this.callbacks.remove(nVObject.id());
    }

    protected ShareLink getLink(NVObject nVObject, LinkInfoV2 linkInfoV2, int i10) {
        Context context = this.context.getContext();
        PackageUtils packageUtils = new PackageUtils(context);
        ShareLink shareLink = new ShareLink();
        shareLink.subject = getTitle(nVObject);
        shareLink.text = context.getString(R.string.share_template_1, packageUtils.getAppName());
        LinkInfo innerLinkInfo = linkInfoV2.getInnerLinkInfo();
        shareLink.url = innerLinkInfo != null ? innerLinkInfo.shareURLShortCode : null;
        if (i10 == 1) {
            shareLink.subject = "hi";
            shareLink.text = getTitle(nVObject);
            shareLink.url = innerLinkInfo != null ? innerLinkInfo.shareURLFullPath : null;
        } else if (i10 == 2) {
            shareLink.text = getTitle(nVObject);
        }
        return shareLink;
    }

    public void share(ShareLink shareLink, int i10) {
        Context context = this.context.getContext();
        if (i10 == 1) {
            if (shareToEmail(shareLink)) {
                ShareCallback shareCallback = this.shareCallback;
                if (shareCallback != null) {
                    shareCallback.onShareSuccessful(1);
                }
                return;
            }
            NVToast.makeText(context, R.string.share_fail, 0).show();
            ShareCallback shareCallback2 = this.shareCallback;
            if (shareCallback2 != null) {
                shareCallback2.onShareFailed(1);
                return;
            }
            return;
        }
        if (i10 == 2) {
            if (shareToSms(shareLink)) {
                ShareCallback shareCallback3 = this.shareCallback;
                if (shareCallback3 != null) {
                    shareCallback3.onShareSuccessful(2);
                    return;
                }
                return;
            }
            NVToast.makeText(context, R.string.share_fail, 0).show();
            ShareCallback shareCallback4 = this.shareCallback;
            if (shareCallback4 != null) {
                shareCallback4.onShareFailed(2);
                return;
            }
            return;
        }
        if (i10 == 241) {
            if (shareToClipboard(shareLink)) {
                NVToast.makeText(context, R.string.share_copy_to_clipboard_success, 0).show();
                ShareCallback shareCallback5 = this.shareCallback;
                if (shareCallback5 != null) {
                    shareCallback5.onShareSuccessful(241);
                    return;
                }
                return;
            }
            NVToast.makeText(context, R.string.share_copy_to_clipboard_fail, 0).show();
            ShareCallback shareCallback6 = this.shareCallback;
            if (shareCallback6 != null) {
                shareCallback6.onShareFailed(241);
                return;
            }
            return;
        }
        switch (i10) {
            case 10:
                if (!shareToFacebook(shareLink)) {
                    NVToast.makeText(context, context.getString(R.string.share_app_not_installed, context.getString(R.string.share_facebook)), 0).show();
                    ShareCallback shareCallback7 = this.shareCallback;
                    if (shareCallback7 != null) {
                        shareCallback7.onShareFailed(10);
                    }
                } else {
                    ShareCallback shareCallback8 = this.shareCallback;
                    if (shareCallback8 != null) {
                        shareCallback8.onShareSuccessful(10);
                    }
                }
                break;
            case 11:
                if (!shareToTwitter(shareLink)) {
                    NVToast.makeText(context, context.getString(R.string.share_app_not_installed, context.getString(R.string.share_twitter)), 0).show();
                    ShareCallback shareCallback9 = this.shareCallback;
                    if (shareCallback9 != null) {
                        shareCallback9.onShareFailed(11);
                    }
                } else {
                    ShareCallback shareCallback10 = this.shareCallback;
                    if (shareCallback10 != null) {
                        shareCallback10.onShareSuccessful(11);
                    }
                }
                break;
            case 12:
                if (!shareToTumblr(shareLink)) {
                    NVToast.makeText(context, context.getString(R.string.share_app_not_installed, context.getString(R.string.share_tumblr)), 0).show();
                    ShareCallback shareCallback11 = this.shareCallback;
                    if (shareCallback11 != null) {
                        shareCallback11.onShareFailed(12);
                    }
                } else {
                    ShareCallback shareCallback12 = this.shareCallback;
                    if (shareCallback12 != null) {
                        shareCallback12.onShareSuccessful(12);
                    }
                }
                break;
            case 13:
                if (!shareToInstagram(shareLink)) {
                    NVToast.makeText(context, context.getString(R.string.share_app_not_installed, context.getString(R.string.share_instagram)), 0).show();
                    ShareCallback shareCallback13 = this.shareCallback;
                    if (shareCallback13 != null) {
                        shareCallback13.onShareFailed(13);
                    }
                } else {
                    ShareCallback shareCallback14 = this.shareCallback;
                    if (shareCallback14 != null) {
                        shareCallback14.onShareSuccessful(13);
                    }
                }
                break;
            default:
                shareToAll(shareLink);
                break;
        }
    }

    protected boolean shareToEmail(ShareLink shareLink) {
        try {
            return new ShareUtils(this.context).shareEmail(null, shareLink.subject, joinTextWithUrl(shareLink.text, shareLink.url, "\n"), this.shareUri, this.context.getContext().getString(R.string.share_chooser_link));
        } catch (Exception unused) {
            return false;
        }
    }

    protected boolean shareToInstagram(ShareLink shareLink) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("image/*");
        intent.putExtra("android.intent.extra.TEXT", shareLink.url);
        intent.putExtra("android.intent.extra.STREAM", this.shareUri);
        for (ResolveInfo resolveInfo : this.context.getContext().getPackageManager().queryIntentActivities(intent, 0)) {
            if (resolveInfo.activityInfo.packageName.toLowerCase(Locale.US).startsWith("com.instagram.android")) {
                intent.setPackage(resolveInfo.activityInfo.packageName);
                intent.putExtra("_noMapping", true);
                safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intent);
                return true;
            }
        }
        return false;
    }

    protected boolean shareToSms(ShareLink shareLink) {
        try {
            String strJoinTextWithUrl = joinTextWithUrl(shareLink.text, shareLink.url, "\n");
            String defaultSmsPackage = Telephony.Sms.getDefaultSmsPackage(this.context.getContext());
            Intent intent = new Intent("android.intent.action.SEND");
            intent.putExtra("android.intent.extra.STREAM", this.shareUri);
            intent.setType("image/*");
            intent.putExtra("android.intent.extra.TEXT", strJoinTextWithUrl);
            if (defaultSmsPackage != null) {
                intent.setPackage(defaultSmsPackage);
            }
            safedk_NVContext_startActivity_4951a27f86e40bc7fa77f5e79e77f8b2(this.context, intent);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public void startLinkTranslation(final NVObject nVObject, final Callback<LinkInfoV2> callback, final int i10) {
        if (nVObject == null) {
            if (callback != null) {
                callback.call(null);
                return;
            }
            return;
        }
        LinkInfoV2 cachedLinkInfo = getCachedLinkInfo(nVObject, i10);
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
        ((ApiService) this.context.getService("api")).exec(ApiRequest.builder().post().path("/link-resolution").param(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, nVObject.id()).param("targetCode", Integer.valueOf(i10 == 0 ? 1 : i10)).param(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, Integer.valueOf(nVObject.objectType())).scopeCommunityId(communityId).build(), new ApiResponseListener<LinkV2TranslationResponse>(LinkV2TranslationResponse.class) { // from class: com.narvii.share.ShareLinkHelper.1
            @Override // com.narvii.util.http.ApiResponseListener
            public void onFail(ApiRequest apiRequest, int i11, List<NameValuePair> list, String str, ApiResponse apiResponse, Throwable th) {
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

            @Override // com.narvii.util.http.ApiResponseListener
            public void onFinish(ApiRequest apiRequest, LinkV2TranslationResponse linkV2TranslationResponse) throws Exception {
                ShareLinkHelper.this.running.remove(nVObject.id());
                ShareLinkHelper.this.cacheLinkInfo(nVObject, i10, linkV2TranslationResponse.linkInfoV2);
                ArrayList arrayList2 = (ArrayList) ShareLinkHelper.this.callbacks.get(nVObject.id());
                if (arrayList2 != null) {
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        ((Callback) it.next()).call(linkV2TranslationResponse.linkInfoV2);
                    }
                }
                ShareLinkHelper.this.callbacks.remove(nVObject.id());
            }
        });
    }

    public ShareLinkHelper(NVContext nVContext) {
        this.context = nVContext;
    }

    protected String joinTextWithUrl(String str, String str2, String str3) {
        if (TextUtils.isEmpty(str)) {
            if (str2 == null) {
                return "";
            }
            return str2;
        }
        if (str2 != null && !str.contains(str2)) {
            return str + str3 + str2;
        }
        return str;
    }
}
