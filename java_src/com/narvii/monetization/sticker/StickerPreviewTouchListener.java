package com.narvii.monetization.sticker;

import android.graphics.Rect;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Adapter;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.ProgressBar;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.model.Media;
import com.narvii.model.Sticker;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.widget.StickerImageView;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import com.narvii.widget.PopupBubble;

/* loaded from: classes3.dex */
public class StickerPreviewTouchListener implements View.OnTouchListener, NVListView.InterceptTouchEventListener, NVListView.DispatchTouchEventEndListener {
    boolean checkCanUse;
    int columnCount;
    int currentPosition = -1;
    View currentPressedView;
    ListView list;
    MembershipService membershipService;
    int paddingH;
    int positionOffset;
    View previewView;
    boolean previewing;
    int rowOffset;
    Adapter stickerAdapter;
    StickerCollection stickerCollection;
    StickerHelper stickerHelper;
    SwipeRefreshLayout swipeRefreshLayout;

    protected void onTouchUp() {
    }

    public StickerPreviewTouchListener(StickerCollection stickerCollection, boolean z, ListView listView, SwipeRefreshLayout swipeRefreshLayout, Adapter adapter, int i, int i2) {
        this.stickerCollection = stickerCollection;
        this.checkCanUse = z;
        this.list = listView;
        this.swipeRefreshLayout = swipeRefreshLayout;
        this.stickerAdapter = adapter;
        this.columnCount = i;
        this.paddingH = i2;
        NVContext nVContext = Utils.getNVContext(listView.getContext());
        this.membershipService = (MembershipService) nVContext.getService("membership");
        this.stickerHelper = new StickerHelper(nVContext);
    }

    public void setStickerCollection(StickerCollection stickerCollection) {
        this.stickerCollection = stickerCollection;
    }

    public void setRowOffset(int i) {
        this.rowOffset = i;
    }

    public void setPositionOffset(int i) {
        this.positionOffset = i;
    }

    private void hidePreviewView() {
        View view = this.currentPressedView;
        if (view != null) {
            view.setPressed(false);
        }
        this.currentPressedView = null;
        this.currentPosition = -1;
        View view2 = this.previewView;
        if (view2 != null) {
            view2.setVisibility(8);
        }
    }

    private boolean canUseSticker(Sticker sticker) {
        return this.stickerHelper.canUseSticker(this.stickerCollection, sticker);
    }

    private void previewSticker(View view, Sticker sticker) {
        View rootView;
        if (view == null || sticker == null || (rootView = view.getRootView()) == null || view.getVisibility() != 0 || view.getWidth() == 0 || view.getHeight() == 0) {
            return;
        }
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int[] iArr2 = new int[2];
        rootView.getLocationInWindow(iArr2);
        if (rootView instanceof ViewGroup) {
            Rect rect = new Rect();
            rect.left = iArr[0] - iArr2[0];
            rect.top = iArr[1] - iArr2[1];
            rect.right = rect.left + view.getWidth();
            rect.bottom = rect.top + view.getHeight();
            if (this.previewView == null) {
                ViewGroup viewGroup = (ViewGroup) rootView;
                this.previewView = LayoutInflater.from(view.getContext()).inflate(R.layout.sticker_preview_layout, viewGroup, false);
                viewGroup.addView(this.previewView);
            }
            PopupBubble popupBubble = (PopupBubble) this.previewView.findViewById(R.id.popup_bubble);
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) popupBubble.getLayoutParams();
            int iMin = (int) (((int) (Math.min(Utils.dpToPx(popupBubble.getContext(), 400.0f), Utils.getScreenWidth(popupBubble.getContext())) / 3.0f)) * 1.2f);
            layoutParams.width = iMin;
            layoutParams.height = iMin;
            final StickerImageView stickerImageView = (StickerImageView) this.previewView.findViewById(R.id.sticker_image);
            stickerImageView.setSticker(sticker);
            final ProgressBar progressBar = (ProgressBar) this.previewView.findViewById(R.id.image_loading);
            if (stickerImageView.getStatus() == 1) {
                ViewUtils.show(progressBar, stickerImageView.getStatus() == 1);
                stickerImageView.setOnImageChangedListener(new NVImageView.OnImageChangedListener() { // from class: com.narvii.monetization.sticker.StickerPreviewTouchListener.1
                    @Override // com.narvii.widget.NVImageView.OnImageChangedListener
                    public void onImageChanged(NVImageView nVImageView, int i, Media media) {
                        ViewUtils.show(progressBar, stickerImageView.getStatus() == 1);
                    }
                });
            }
            int width = rootView.getWidth();
            boolean z = rect.top - iMin > (StatusBarUtils.STATUS_BAR_ENABLE ? Utils.getStatusBarHeight(popupBubble.getContext()) : 0);
            int i = z ? rect.top - iMin : rect.bottom;
            int iCenterX = rect.centerX() - (iMin / 2);
            int i2 = width / 2;
            if (rect.centerX() < i2) {
                iCenterX = Math.max(iCenterX, 0);
            }
            if (rect.centerX() > i2) {
                iCenterX = Math.min(iCenterX, width - iMin);
            }
            layoutParams.leftMargin = iCenterX;
            layoutParams.topMargin = i;
            popupBubble.setLayoutParams(layoutParams);
            popupBubble.setAutoRtl(false);
            popupBubble.setIndicator(!z, rect.centerX() - iCenterX);
            this.previewView.setVisibility(0);
        }
    }

    public void startPreview(int i, View view, Sticker sticker) {
        this.previewing = true;
        if (this.list.getRootView() instanceof ViewGroup) {
            ((ViewGroup) this.list.getRootView()).setMotionEventSplittingEnabled(false);
        }
        onTouchPreview(i, view, sticker);
        SwipeRefreshLayout swipeRefreshLayout = this.swipeRefreshLayout;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.requestDisallowInterceptTouchEvent(true);
        }
    }

    private void onTouchPreview(int i, View view, Sticker sticker) {
        view.setPressed(true);
        View view2 = this.currentPressedView;
        if (view2 != null) {
            view2.setPressed(false);
        }
        previewSticker(view, sticker);
        this.currentPressedView = view;
        this.currentPosition = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x00f1  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r6, android.view.MotionEvent r7) {
        /*
            Method dump skipped, instructions count: 245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.narvii.monetization.sticker.StickerPreviewTouchListener.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    private void onTouchEventUp() {
        if (this.list.getRootView() instanceof ViewGroup) {
            ((ViewGroup) this.list.getRootView()).setMotionEventSplittingEnabled(true);
        }
        SwipeRefreshLayout swipeRefreshLayout = this.swipeRefreshLayout;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.requestDisallowInterceptTouchEvent(false);
        }
        this.currentPosition = -1;
        this.previewing = false;
        hidePreviewView();
        onTouchUp();
    }

    @Override // com.narvii.widget.NVListView.InterceptTouchEventListener
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1 || action == 3) {
            onTouchEventUp();
        }
        return this.previewing;
    }

    @Override // com.narvii.widget.NVListView.DispatchTouchEventEndListener
    public void onDispatchTouchEventEnd(MotionEvent motionEvent) {
        View view;
        if (!this.previewing || (view = this.currentPressedView) == null || view.isPressed()) {
            return;
        }
        this.currentPressedView.setPressed(true);
    }
}
