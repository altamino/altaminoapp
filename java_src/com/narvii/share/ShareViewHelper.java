package com.narvii.share;

import android.net.Uri;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.GridLayout;
import com.narvii.app.NVContext;
import com.narvii.lib.R;
import com.narvii.media.SaveImageHelper;
import com.narvii.model.Blog;
import com.narvii.model.Community;
import com.narvii.model.Feed;
import com.narvii.model.NVObject;
import com.narvii.share.elements.BaseElement;
import com.narvii.share.elements.ClipboardElement;
import com.narvii.share.elements.ElementUtils;
import com.narvii.share.elements.InstagramElement;
import com.narvii.share.elements.PinterestElement;
import com.narvii.util.Callback;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes3.dex */
public class ShareViewHelper implements View.OnClickListener {
    private OnClickShareItemListener clickListener;
    private NVContext context;
    private ElementUtils elementUtils;
    public String source;
    public String statContent;

    private interface DealWithSharePayloadStep {
        void onFinish(SharePayload sharePayload);
    }

    public interface OnClickShareItemListener {
        SharePayload getPayload();

        void onFinishShare(SharePayload sharePayload, View view);

        void onPreShare(SharePayload sharePayload, Object obj);
    }

    public void stat(SharePayload sharePayload, String str) {
    }

    public ShareViewHelper(NVContext nVContext) {
        this.context = nVContext;
        this.elementUtils = new ElementUtils(nVContext);
    }

    public void configShareToolBar(OnClickShareItemListener onClickShareItemListener, ViewGroup viewGroup) {
        this.clickListener = onClickShareItemListener;
        List<BaseElement> shareTargetElements = this.elementUtils.getShareTargetElements(false);
        SharePayload payload = onClickShareItemListener.getPayload();
        if (payload != null && payload.uri == null && (!payload.needDownloadImg || payload.mediaUrl == null)) {
            Iterator<BaseElement> it = shareTargetElements.iterator();
            while (it.hasNext()) {
                BaseElement next = it.next();
                if ((next instanceof InstagramElement) || (next instanceof PinterestElement)) {
                    it.remove();
                }
            }
        }
        int childCount = viewGroup.getChildCount();
        int size = shareTargetElements.size();
        if (size < childCount) {
            while (size < childCount) {
                try {
                    if (viewGroup.getChildAt(size) != null) {
                        viewGroup.removeViewAt(size);
                    }
                } catch (Exception unused) {
                }
                size++;
            }
        }
        DisplayMetrics displayMetrics = this.context.getContext().getResources().getDisplayMetrics();
        int iMin = (int) (Math.min(displayMetrics.widthPixels, displayMetrics.heightPixels) * 0.22f);
        if (viewGroup instanceof GridLayout) {
            try {
                ((GridLayout) viewGroup).setColumnCount(4);
                ((GridLayout) viewGroup).setRowCount((shareTargetElements.size() / 4) + 1);
            } catch (Exception unused2) {
            }
        }
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.context.getContext());
        for (int i = 0; i < shareTargetElements.size(); i++) {
        }
        int i2 = 0;
        while (i2 < shareTargetElements.size()) {
            View childAt = viewGroup.getChildCount() > i2 ? viewGroup.getChildAt(i2) : null;
            if (childAt == null) {
                childAt = layoutInflaterFrom.inflate(R.layout.share_target_cell_layout, viewGroup, false);
                viewGroup.addView(childAt);
            }
            if (childAt instanceof ShareTargetCellLayout) {
                ((ShareTargetCellLayout) childAt).setShareTarget(shareTargetElements.get(i2));
                childAt.setTag(R.id.share_target_element, shareTargetElements.get(i2));
                childAt.setOnClickListener(this);
                ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                layoutParams.width = iMin;
                layoutParams.height = iMin;
            }
            i2++;
        }
    }

    @Override // android.view.View.OnClickListener
    public void onClick(final View view) {
        OnClickShareItemListener onClickShareItemListener = this.clickListener;
        if (onClickShareItemListener == null) {
            return;
        }
        SharePayload payload = onClickShareItemListener.getPayload();
        if (view instanceof ShareDialogButton) {
            ShareButtonCustomInfo shareButtonCustomInfo = (ShareButtonCustomInfo) view.getTag(R.id.share_button_target_info);
            this.clickListener.onPreShare(payload, shareButtonCustomInfo);
            shareButtonCustomInfo.onClick(payload);
            this.clickListener.onFinishShare(payload, view);
            String statSelectionForShare = shareButtonCustomInfo.getStatSelectionForShare();
            if (statSelectionForShare != null) {
                stat(payload, statSelectionForShare);
                return;
            }
            return;
        }
        if (view instanceof ShareTargetCellLayout) {
            Object tag = view.getTag(R.id.share_target_element);
            if (tag instanceof BaseElement) {
                this.clickListener.onPreShare(payload, tag);
                share(payload, (BaseElement) tag, new Callback<SharePayload>() { // from class: com.narvii.share.ShareViewHelper.1
                    @Override // com.narvii.util.Callback
                    public void call(SharePayload sharePayload) {
                        if (ShareViewHelper.this.clickListener != null) {
                            ShareViewHelper.this.clickListener.onFinishShare(sharePayload, view);
                        }
                    }
                });
            }
        }
    }

    public void share(SharePayload sharePayload, final BaseElement baseElement, final Callback<SharePayload> callback) {
        dealWithPayload(sharePayload, new DealWithSharePayloadStep() { // from class: com.narvii.share.ShareViewHelper.2
            @Override // com.narvii.share.ShareViewHelper.DealWithSharePayloadStep
            public void onFinish(SharePayload sharePayload2) {
                ShareViewHelper.this.doShare(sharePayload2, baseElement);
                Callback callback2 = callback;
                if (callback2 != null) {
                    callback2.call(sharePayload2);
                }
                ShareViewHelper.this.stat(sharePayload2, baseElement.targetName());
            }
        });
    }

    private void dealWithPayload(SharePayload sharePayload, final DealWithSharePayloadStep dealWithSharePayloadStep) {
        dealWithImg(sharePayload, new DealWithSharePayloadStep() { // from class: com.narvii.share.ShareViewHelper.3
            @Override // com.narvii.share.ShareViewHelper.DealWithSharePayloadStep
            public void onFinish(SharePayload sharePayload2) {
                ShareViewHelper.this.dealWithLink(sharePayload2, dealWithSharePayloadStep);
            }
        });
    }

    private void dealWithImg(final SharePayload sharePayload, final DealWithSharePayloadStep dealWithSharePayloadStep) {
        if (sharePayload.needDownloadImg && !TextUtils.isEmpty(sharePayload.mediaUrl)) {
            SaveImageHelper saveImageHelper = new SaveImageHelper(this.context) { // from class: com.narvii.share.ShareViewHelper.4
                @Override // com.narvii.media.SaveImageHelper
                public void onSuccess(String str, Uri uri) {
                    SharePayload sharePayload2 = sharePayload;
                    sharePayload2.uri = uri;
                    sharePayload2.needDownloadImg = false;
                    dealWithSharePayloadStep.onFinish(sharePayload2);
                }

                @Override // com.narvii.media.SaveImageHelper
                public void onFail(String str, String str2) {
                    super.onFail(str, str2);
                    dealWithSharePayloadStep.onFinish(sharePayload);
                }
            };
            saveImageHelper.setIgnoreMembership(true);
            saveImageHelper.save(sharePayload.mediaUrl, false, sharePayload.forceUseImageOriginUrl);
            return;
        }
        dealWithSharePayloadStep.onFinish(sharePayload);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dealWithLink(final SharePayload sharePayload, final DealWithSharePayloadStep dealWithSharePayloadStep) {
        if (sharePayload.needTranslateLink && TextUtils.isEmpty(sharePayload.url)) {
            new ShareLinkHelper(this.context).startLinkTranslation(sharePayload.object, new Callback<LinkInfoV2>() { // from class: com.narvii.share.ShareViewHelper.5
                @Override // com.narvii.util.Callback
                public void call(LinkInfoV2 linkInfoV2) {
                    LinkInfo innerLinkInfo;
                    if (linkInfoV2 == null || (innerLinkInfo = linkInfoV2.getInnerLinkInfo()) == null || TextUtils.isEmpty(innerLinkInfo.shareURLShortCode)) {
                        return;
                    }
                    SharePayload sharePayload2 = sharePayload;
                    sharePayload2.url = innerLinkInfo.shareURLShortCode;
                    sharePayload2.needTranslateLink = false;
                    dealWithSharePayloadStep.onFinish(sharePayload2);
                }
            }, sharePayload.translationTarget);
        } else {
            dealWithSharePayloadStep.onFinish(sharePayload);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doShare(SharePayload sharePayload, BaseElement baseElement) {
        baseElement.share(sharePayload);
    }

    public void copyLink(NVObject nVObject) {
        copyLink(nVObject, null);
    }

    public void copyLink(NVObject nVObject, String str) {
        SharePayload sharePayload = new SharePayload();
        sharePayload.object = nVObject;
        sharePayload.successToastMessage = str;
        if (nVObject instanceof Community) {
            sharePayload.needTranslateLink = false;
            sharePayload.url = ((Community) nVObject).link;
        } else {
            if ((nVObject instanceof Blog) && ((Blog) nVObject).type == 9) {
                sharePayload.translationTarget = 11;
            }
            sharePayload.needTranslateLink = true;
            if (nVObject instanceof Feed) {
                sharePayload.text = ((Feed) nVObject).title();
            }
        }
        share(sharePayload, new ClipboardElement(this.context), null);
    }

    public void shareFeed(NVObject nVObject, BaseElement baseElement) {
        SharePayload sharePayload = new SharePayload();
        sharePayload.object = nVObject;
        if ((nVObject instanceof Blog) && ((Blog) nVObject).type == 9) {
            sharePayload.translationTarget = 11;
        }
        sharePayload.needTranslateLink = true;
        if (nVObject instanceof Feed) {
            sharePayload.text = ((Feed) nVObject).title();
        }
        share(sharePayload, baseElement, null);
    }
}
