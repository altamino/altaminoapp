package com.narvii.share;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.ScrollView;
import com.narvii.app.NVFragment;
import com.narvii.community.CommunityService;
import com.narvii.config.ConfigService;
import com.narvii.lib.R;
import com.narvii.share.ShareViewHelper;
import com.narvii.share.elements.BaseElement;
import com.narvii.share.elements.ElementUtils;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.crashlytics.OomHelper;
import com.narvii.util.image.BitmapUtils;
import com.narvii.util.image.Screenshot;
import com.narvii.widget.NVImageView;
import java.io.File;
import java.io.FileOutputStream;

/* loaded from: classes3.dex */
public abstract class ShareDarkRoomFragment extends NVFragment {
    public static String KEY_SHARE_OBJECT = "share_object";
    public static String KEY_STATISTIC_CONTENT = "statistic_content";
    public static String KEY_STATISTIC_SOURCE = "statistic_source";
    private ViewGroup contentContainer;
    private View contentView;
    ElementUtils elementUtils;
    private LayoutInflater inflater;
    boolean readyForScreenshot;
    private View rootView;
    private ScrollView scrollView;
    ShareDarkRoomHelper shareDarkRoomHelper;
    protected ShareViewHelper shareDialogHelper;
    SharePayload sharePayload;
    GridLayout shareToolBarContainer;
    private final Runnable checkForScreenshot = new Runnable() { // from class: com.narvii.share.ShareDarkRoomFragment.1
        int c;

        @Override // java.lang.Runnable
        public void run() {
            SharePayload sharePayload = ShareDarkRoomFragment.this.sharePayload;
            if (sharePayload == null || sharePayload.bitmap == null) {
                ShareDarkRoomFragment shareDarkRoomFragment = ShareDarkRoomFragment.this;
                shareDarkRoomFragment.sharePayload = shareDarkRoomFragment.getPreContentPayload(shareDarkRoomFragment.contentView);
                int i = this.c;
                this.c = i + 1;
                if (i < 4) {
                    Utils.postDelayed(this, 200L);
                }
            }
            ShareDarkRoomFragment shareDarkRoomFragment2 = ShareDarkRoomFragment.this;
            shareDarkRoomFragment2.shareDialogHelper.configShareToolBar(shareDarkRoomFragment2.shareListener, shareDarkRoomFragment2.shareToolBarContainer);
        }
    };
    ShareViewHelper.OnClickShareItemListener shareListener = new ShareViewHelper.OnClickShareItemListener() { // from class: com.narvii.share.ShareDarkRoomFragment.2
        @Override // com.narvii.share.ShareViewHelper.OnClickShareItemListener
        public void onFinishShare(SharePayload sharePayload, View view) {
        }

        @Override // com.narvii.share.ShareViewHelper.OnClickShareItemListener
        public SharePayload getPayload() {
            return ShareDarkRoomFragment.this.sharePayload;
        }

        @Override // com.narvii.share.ShareViewHelper.OnClickShareItemListener
        public void onPreShare(SharePayload sharePayload, Object obj) {
            ShareDarkRoomFragment.this.preCheck();
        }
    };

    public abstract void configContentView(View view);

    public abstract int contentLayoutId();

    public abstract SharePayload getPreContentPayload(View view);

    @Override // com.narvii.app.NVFragment
    public boolean isModel() {
        return true;
    }

    protected void preCheck() {
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.shareDarkRoomHelper = new ShareDarkRoomHelper(this);
        this.elementUtils = new ElementUtils(this);
    }

    @Override // android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.share_dark_room_layout, viewGroup, false);
        this.rootView = viewInflate;
        return viewInflate;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        View customView = getActivity().getActionBar().getCustomView();
        if (customView != null) {
            View viewFindViewById = customView.findViewById(R.id.actionbar_back);
            if (viewFindViewById instanceof ImageView) {
                ((ImageView) viewFindViewById).setImageDrawable(ContextCompat.getDrawable(getContext(), R.drawable.share_close));
            }
        }
        setTitle(R.string.share);
        this.inflater = LayoutInflater.from(getContext());
        this.contentContainer = (ViewGroup) view.findViewById(R.id.share_content_container);
        this.contentView = this.inflater.inflate(contentLayoutId(), this.contentContainer);
        configContentView(this.contentView);
        this.scrollView = (ScrollView) view.findViewById(R.id.scroll);
        if (isAdded()) {
            getActivity().getWindow().setBackgroundDrawable(new ColorDrawable(-15461356));
        }
        NVImageView nVImageView = (NVImageView) view.findViewById(R.id.bg);
        Drawable dynamicThemeBg = this.shareDarkRoomHelper.getDynamicThemeBg();
        if (dynamicThemeBg != null) {
            nVImageView.setImageDrawable(dynamicThemeBg);
        } else {
            ((CommunityService) getService("community")).getCommunity(((ConfigService) getService("config")).getCommunityId());
        }
        this.shareToolBarContainer = (GridLayout) view.findViewById(R.id.share_targets_layout);
        this.shareDialogHelper = new ShareViewHelper(this);
        this.shareDialogHelper.source = getStringParam(KEY_STATISTIC_SOURCE);
        this.shareDialogHelper.statContent = getStringParam(KEY_STATISTIC_CONTENT);
        this.shareDialogHelper.configShareToolBar(this.shareListener, this.shareToolBarContainer);
        ShareDialogButton shareDialogButton = (ShareDialogButton) view.findViewById(R.id.share_dialog_first_button);
        if (shareDialogButton != null) {
            ShareButtonCopyLink shareButtonCopyLink = new ShareButtonCopyLink(this);
            shareDialogButton.setText(shareButtonCopyLink.getTextString());
            shareDialogButton.setIcon(shareButtonCopyLink.getIcon());
            shareDialogButton.setTag(R.id.share_button_target_info, shareButtonCopyLink);
            shareDialogButton.setOnClickListener(this.shareDialogHelper);
        }
        ShareDialogButton shareDialogButton2 = (ShareDialogButton) view.findViewById(R.id.share_dialog_second_button);
        if (shareDialogButton2 != null) {
            ShareButtonSaveImage shareButtonSaveImage = new ShareButtonSaveImage(this);
            shareDialogButton2.setText(shareButtonSaveImage.getTextString());
            shareDialogButton2.setIcon(shareButtonSaveImage.getIcon());
            shareDialogButton2.setTag(R.id.share_button_target_info, shareButtonSaveImage);
            shareDialogButton2.setOnClickListener(this.shareDialogHelper);
        }
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        Utils.post(this.checkForScreenshot);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onPause() {
        super.onPause();
        Utils.handler.removeCallbacks(this.checkForScreenshot);
    }

    @Override // com.narvii.app.NVFragment
    public int getCustomTheme() {
        return R.style.AminoTheme_Overlay;
    }

    protected Uri storageBitmapScreen(String str, Bitmap bitmap) {
        if (bitmap != null) {
            try {
                File newScreenshotFile = Screenshot.getNewScreenshotFile(getContext(), str, "jpg");
                FileOutputStream fileOutputStream = new FileOutputStream(newScreenshotFile);
                BitmapUtils.compressJpeg(bitmap, 100, fileOutputStream);
                fileOutputStream.flush();
                fileOutputStream.close();
                return Utils.getUriFromFile(getContext(), newScreenshotFile);
            } catch (Throwable th) {
                OomHelper.test(th);
                NVToast.makeText(getContext(), th instanceof OutOfMemoryError ? R.string.out_of_memory : R.string.normal_error, 0).show();
            }
        }
        return null;
    }

    protected Bitmap captureScreen(View view) {
        Bitmap bitmapCreateBitmap = null;
        if (view == null) {
            return null;
        }
        try {
            bitmapCreateBitmap = Bitmap.createBitmap(view.getMeasuredWidth(), view.getMeasuredHeight(), Bitmap.Config.ARGB_8888);
            view.draw(new Canvas(bitmapCreateBitmap));
            return bitmapCreateBitmap;
        } catch (Exception e) {
            Log.d("Failed to capture screenshot because:" + e.getMessage());
            return bitmapCreateBitmap;
        } catch (OutOfMemoryError e2) {
            OomHelper.test(e2);
            return bitmapCreateBitmap;
        }
    }

    private class FakeElement extends BaseElement {
        String name;

        @Override // com.narvii.share.elements.BaseElement
        public int color() {
            return 0;
        }

        @Override // com.narvii.share.elements.BaseElement
        public Drawable icon() {
            return null;
        }

        @Override // com.narvii.share.elements.BaseElement
        public String packageName() {
            return null;
        }

        @Override // com.narvii.share.elements.BaseElement
        public int priority() {
            return 0;
        }

        @Override // com.narvii.share.ShareableTarget
        public void share(SharePayload sharePayload) {
        }

        public FakeElement(String str) {
            super(ShareDarkRoomFragment.this);
            this.name = str;
        }

        @Override // com.narvii.share.elements.BaseElement
        public String targetName() {
            return this.name;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void scrollToTop() {
        ScrollView scrollView = this.scrollView;
        if (scrollView == null) {
            return;
        }
        scrollView.smoothScrollTo(0, 0);
    }
}
