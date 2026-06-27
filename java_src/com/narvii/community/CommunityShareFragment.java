package com.narvii.community;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.view.ViewCompat;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.RelativeSizeSpan;
import android.text.style.StyleSpan;
import android.view.View;
import android.widget.TextView;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.ImageLoader;
import com.narvii.lib.R;
import com.narvii.model.Community;
import com.narvii.share.ShareDarkRoomFragment;
import com.narvii.share.SharePayload;
import com.narvii.util.AlignSuperscriptSpan;
import com.narvii.util.JacksonUtils;
import com.narvii.util.blur.NativeBlurProcess;
import com.narvii.util.image.NVImageLoader;
import com.narvii.widget.PromotionalImageView;
import com.narvii.widget.ThumbImageView;

/* loaded from: classes2.dex */
public class CommunityShareFragment extends ShareDarkRoomFragment {
    public static String KEY_SHARE_SUBJECT = "shareSubject";
    public static String KEY_SHARE_TEXT = "shareText";
    Community community;

    @Override // com.narvii.share.ShareDarkRoomFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            this.community = (Community) JacksonUtils.readAs(bundle.getString(ShareDarkRoomFragment.KEY_SHARE_OBJECT), Community.class);
        } else {
            this.community = (Community) JacksonUtils.readAs(getStringParam(ShareDarkRoomFragment.KEY_SHARE_OBJECT), Community.class);
        }
        if (this.community == null) {
            finish();
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(ShareDarkRoomFragment.KEY_SHARE_OBJECT, JacksonUtils.writeAsString(this.community));
    }

    @Override // com.narvii.share.ShareDarkRoomFragment
    public int contentLayoutId() {
        return R.layout.share_community_content_layout;
    }

    @Override // com.narvii.share.ShareDarkRoomFragment
    public void configContentView(View view) {
        if (this.community == null) {
            return;
        }
        ((ThumbImageView) view.findViewById(R.id.community_share_icon)).setImageUrl(this.community.icon);
        final PromotionalImageView promotionalImageView = (PromotionalImageView) view.findViewById(R.id.community_share_bg);
        Community community = this.community;
        if (community.promotionalMediaList != null) {
            promotionalImageView.setCommunity(community);
        } else {
            NVImageLoader nVImageLoader = (NVImageLoader) getService("imageLoader");
            String str = this.community.icon;
            if (str != null) {
                nVImageLoader.get(str, new ImageLoader.ImageListener() { // from class: com.narvii.community.CommunityShareFragment.1
                    @Override // com.android.volley.Response.ErrorListener
                    public void onErrorResponse(VolleyError volleyError) {
                        promotionalImageView.setImageDrawable(new ColorDrawable(ViewCompat.MEASURED_STATE_MASK));
                    }

                    @Override // com.android.volley.toolbox.ImageLoader.ImageListener
                    public void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
                        if (imageContainer.getBitmap() != null) {
                            promotionalImageView.setImageDrawable(new BitmapDrawable(CommunityShareFragment.this.getContext().getResources(), new NativeBlurProcess().blur(imageContainer.getBitmap(), 10.0f)));
                        }
                    }
                });
            }
        }
        TextView textView = (TextView) view.findViewById(R.id.community_share_title);
        TextView textView2 = (TextView) view.findViewById(R.id.community_share_tagline);
        textView.setText(this.community.name);
        textView2.setText(this.community.tagline);
        String str2 = this.community.endpoint;
        TextView textView3 = (TextView) view.findViewById(R.id.community_id_info);
        String string = getString(R.string.amino_id_with_name, str2);
        SpannableString spannableString = new SpannableString(string);
        if (!TextUtils.isEmpty(str2)) {
            int iLastIndexOf = string.lastIndexOf(str2);
            spannableString.setSpan(new StyleSpan(1), iLastIndexOf, string.length(), 33);
            spannableString.setSpan(new RelativeSizeSpan(0.7f), 0, iLastIndexOf, 33);
            spannableString.setSpan(new AlignSuperscriptSpan(0.35f, 0.7f), 0, iLastIndexOf, 33);
        }
        textView3.setText(spannableString);
        ((TextView) view.findViewById(R.id.community_id_hint)).setText(getString(R.string.community_id) + ": ");
    }

    @Override // com.narvii.share.ShareDarkRoomFragment
    public SharePayload getPreContentPayload(View view) {
        Bitmap bitmapCaptureScreen = captureScreen(view.findViewById(R.id.real_share_layout));
        Uri uriStorageBitmapScreen = storageBitmapScreen("community", bitmapCaptureScreen);
        SharePayload sharePayload = new SharePayload();
        sharePayload.object = this.community;
        String stringParam = getStringParam("shareText");
        if (TextUtils.isEmpty(stringParam)) {
            Context context = getContext();
            int i = R.string.share_community_text_template_1;
            Object[] objArr = new Object[1];
            Community community = this.community;
            objArr[0] = community == null ? null : community.name;
            sharePayload.text = context.getString(i, objArr);
        } else {
            sharePayload.text = stringParam;
        }
        sharePayload.needTranslateLink = false;
        sharePayload.url = this.community.link;
        sharePayload.uri = uriStorageBitmapScreen;
        sharePayload.bitmap = bitmapCaptureScreen;
        return sharePayload;
    }
}
