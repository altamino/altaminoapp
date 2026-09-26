package com.narvii.monetization.store;

import android.content.Context;
import android.content.Intent;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.master.CommunityDetailFragment;
import com.narvii.model.ChatBubble;
import com.narvii.model.NVObject;
import com.narvii.model.api.ApiResponse;
import com.narvii.monetization.avatarframe.AvatarFrame;
import com.narvii.monetization.avatarframe.MonetizationStoreAvatarFrameFragment;
import com.narvii.monetization.bubble.detail.BubbleDetailFragment;
import com.narvii.monetization.sticker.collection.StickerCollectionDetailFragment;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.store.data.StoreItem;
import com.narvii.poweruser.history.ModerationHistoryBaseFragment;
import com.narvii.util.Callback;
import com.narvii.util.JacksonUtils;
import com.narvii.util.Utils;
import com.narvii.util.dialog.ProgressDialog;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.http.ApiService;
import com.safedk.android.utils.Logger;

/* JADX INFO: loaded from: classes10.dex */
public class StoreHelper {
    Context context;
    String source = "Store";

    public static void safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(Context p0, Intent p1) {
        Logger.d("SafeDK-Special|SafeDK: Call> Landroid/content/Context;->startActivity(Landroid/content/Intent;)V");
        if (p1 == null) {
            return;
        }
        p0.startActivity(p1);
    }

    private void handleShareRequest(String str, Callback<ApiResponse> callback, String str2) {
        if (str == null) {
            return;
        }
        ProgressDialog progressDialog = new ProgressDialog(this.context);
        progressDialog.successListener = callback;
        progressDialog.show();
        ((ApiService) Utils.getNVContext(this.context).getService("api")).exec(ApiRequest.builder().post().path("store/share-requests/" + str + com.google.firebase.sessions.settings.c.FORWARD_SLASH_STRING + str2).build(), progressDialog.dismissListener);
    }

    public void approveShareRequest(String str, Callback<ApiResponse> callback) {
        handleShareRequest(str, callback, "approve");
    }

    public void openStoreItemDetail(StoreItem storeItem) {
        if (storeItem == null) {
            return;
        }
        NVObject refObject = storeItem.getRefObject();
        int i10 = storeItem.refObjectType;
        if (i10 == 114) {
            if (refObject instanceof StickerCollection) {
                Intent intent = StickerCollectionDetailFragment.intent((StickerCollection) refObject);
                intent.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
                safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.context, intent);
                return;
            } else {
                Intent intent2 = FragmentWrapperActivity.intent(StickerCollectionDetailFragment.class);
                intent2.putExtra("id", storeItem.refObjectId);
                intent2.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
                safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.context, intent2);
                return;
            }
        }
        if (i10 == 116) {
            Intent intent3 = FragmentWrapperActivity.intent(BubbleDetailFragment.class);
            intent3.putExtra("id", storeItem.refObjectId);
            intent3.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
            if (refObject instanceof ChatBubble) {
                intent3.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(refObject));
            }
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.context, intent3);
            return;
        }
        if (i10 == 122) {
            Intent intent4 = FragmentWrapperActivity.intent(MonetizationStoreAvatarFrameFragment.class);
            intent4.putExtra("id", storeItem.refObjectId);
            intent4.putExtra(ExternalPostPreviewFragment.SOURCE, this.source);
            if (refObject instanceof AvatarFrame) {
                intent4.putExtra(CommunityDetailFragment.KEY_COMMUNITY, JacksonUtils.writeAsString(refObject));
            }
            safedk_Context_startActivity_97cb3195734cf5c9cc3418feeafa6dd6(this.context, intent4);
        }
    }

    public void rejectShareRequest(String str, Callback<ApiResponse> callback) {
        handleShareRequest(str, callback, "reject");
    }

    public void shareRequest(String str, int i10, Callback<ApiResponse> callback) {
        ProgressDialog progressDialog = new ProgressDialog(this.context);
        progressDialog.successListener = callback;
        progressDialog.show();
        ((ApiService) Utils.getNVContext(this.context).getService("api")).exec(ApiRequest.builder().post().path("store/share-requests").param(ModerationHistoryBaseFragment.PARAMS_OBJECT_ID, str).param(ModerationHistoryBaseFragment.PARAMS_OBJECT_TYPE, Integer.valueOf(i10)).build(), progressDialog.dismissListener);
    }

    public StoreHelper(Context context) {
        this.context = context;
    }
}
