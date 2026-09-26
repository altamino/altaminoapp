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
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.list.refresh.SwipeRefreshLayout;
import com.narvii.model.Media;
import com.narvii.model.Sticker;
import com.narvii.monetization.sticker.model.StickerCollection;
import com.narvii.monetization.sticker.widget.StickerImageView;
import com.narvii.util.Log;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.util.statusbar.StatusBarUtils;
import com.narvii.wallet.MembershipService;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NVListView;
import com.narvii.widget.PopupBubble;

/* JADX INFO: loaded from: classes8.dex */
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

    private void onTouchPreview(int i10, View view, Sticker sticker) {
        view.setPressed(true);
        View view2 = this.currentPressedView;
        if (view2 != null) {
            view2.setPressed(false);
        }
        previewSticker(view, sticker);
        this.currentPressedView = view;
        this.currentPosition = i10;
    }

    /* JADX WARN: Code duplicated, block: B:64:0x00ef  */
    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        View childAt;
        if (motionEvent == null || !this.previewing) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 1) {
            onTouchEventUp();
        } else if (action == 2) {
            int iPointToPosition = this.list.pointToPosition((int) motionEvent.getX(), (int) motionEvent.getY());
            if (iPointToPosition < this.rowOffset || this.list.getAdapter() == null || this.stickerAdapter == null) {
                hidePreviewView();
                return true;
            }
            int x6 = (int) ((motionEvent.getX() - this.paddingH) / ((this.list.getWidth() - (this.paddingH * 2)) / this.columnCount));
            if (Utils.isRtl()) {
                x6 = (this.columnCount - 1) - x6;
            }
            int iMax = Math.max(0, Math.min(this.columnCount - 1, x6));
            int i10 = (((iPointToPosition - this.rowOffset) * this.columnCount) + iMax) - this.positionOffset;
            if (this.currentPosition == i10) {
                View view2 = this.currentPressedView;
                if (view2 != null) {
                    view2.setPressed(true);
                }
                return true;
            }
            if (i10 < 0 || i10 >= this.stickerAdapter.getCount()) {
                hidePreviewView();
                return true;
            }
            Object item = this.stickerAdapter.getItem(i10);
            if (!(item instanceof Sticker)) {
                hidePreviewView();
                return true;
            }
            Sticker sticker = (Sticker) item;
            Log.d("sticker", sticker.icon);
            if (this.checkCanUse && (!canUseSticker(sticker) || sticker.isDisabled())) {
                hidePreviewView();
                return true;
            }
            int firstVisiblePosition = this.list.getFirstVisiblePosition();
            int lastVisiblePosition = this.list.getLastVisiblePosition();
            if (iPointToPosition < firstVisiblePosition || iPointToPosition > lastVisiblePosition) {
                hidePreviewView();
                return true;
            }
            View childAt2 = this.list.getChildAt(iPointToPosition - firstVisiblePosition);
            if (childAt2 instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) childAt2;
                if (viewGroup.getChildCount() > iMax && (childAt = viewGroup.getChildAt(iMax)) != null) {
                    onTouchPreview(i10, childAt, sticker);
                }
            }
        } else if (action == 3) {
            onTouchEventUp();
        }
        return true;
    }

    protected void onTouchUp() {
    }

    public void setPositionOffset(int i10) {
        this.positionOffset = i10;
    }

    public void setRowOffset(int i10) {
        this.rowOffset = i10;
    }

    public void setStickerCollection(StickerCollection stickerCollection) {
        this.stickerCollection = stickerCollection;
    }

    public void startPreview(int i10, View view, Sticker sticker) {
        this.previewing = true;
        if (this.list.getRootView() instanceof ViewGroup) {
            ((ViewGroup) this.list.getRootView()).setMotionEventSplittingEnabled(false);
        }
        onTouchPreview(i10, view, sticker);
        SwipeRefreshLayout swipeRefreshLayout = this.swipeRefreshLayout;
        if (swipeRefreshLayout != null) {
            swipeRefreshLayout.requestDisallowInterceptTouchEvent(true);
        }
    }

    private boolean canUseSticker(Sticker sticker) {
        return this.stickerHelper.canUseSticker(this.stickerCollection, sticker);
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
            int i10 = iArr[0] - iArr2[0];
            rect.left = i10;
            rect.top = iArr[1] - iArr2[1];
            rect.right = i10 + view.getWidth();
            rect.bottom = rect.top + view.getHeight();
            if (this.previewView == null) {
                ViewGroup viewGroup = (ViewGroup) rootView;
                View viewInflate = LayoutInflater.from(view.getContext()).inflate(R.layout.sticker_preview_layout, viewGroup, false);
                this.previewView = viewInflate;
                viewGroup.addView(viewInflate);
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
                    public void onImageChanged(NVImageView nVImageView, int i11, Media media) {
                        ViewUtils.show(progressBar, stickerImageView.getStatus() == 1);
                    }
                });
            }
            int width = rootView.getWidth();
            int statusBarHeight = StatusBarUtils.STATUS_BAR_ENABLE ? Utils.getStatusBarHeight(popupBubble.getContext()) : 0;
            int i11 = rect.top;
            boolean z6 = i11 - iMin > statusBarHeight;
            int i12 = z6 ? i11 - iMin : rect.bottom;
            int iCenterX = rect.centerX() - (iMin / 2);
            int i13 = width / 2;
            if (rect.centerX() < i13) {
                iCenterX = Math.max(iCenterX, 0);
            }
            if (rect.centerX() > i13) {
                iCenterX = Math.min(iCenterX, width - iMin);
            }
            layoutParams.leftMargin = iCenterX;
            layoutParams.topMargin = i12;
            popupBubble.setLayoutParams(layoutParams);
            popupBubble.setAutoRtl(false);
            popupBubble.setIndicator(!z6, rect.centerX() - iCenterX);
            this.previewView.setVisibility(0);
        }
    }

    @Override // com.narvii.widget.NVListView.DispatchTouchEventEndListener
    public void onDispatchTouchEventEnd(MotionEvent motionEvent) {
        View view;
        if (!this.previewing || (view = this.currentPressedView) == null || view.isPressed()) {
            return;
        }
        this.currentPressedView.setPressed(true);
    }

    public StickerPreviewTouchListener(StickerCollection stickerCollection, boolean z6, ListView listView, SwipeRefreshLayout swipeRefreshLayout, Adapter adapter, int i10, int i11) {
        this.stickerCollection = stickerCollection;
        this.checkCanUse = z6;
        this.list = listView;
        this.swipeRefreshLayout = swipeRefreshLayout;
        this.stickerAdapter = adapter;
        this.columnCount = i10;
        this.paddingH = i11;
        NVContext nVContext = Utils.getNVContext(listView.getContext());
        this.membershipService = (MembershipService) nVContext.getService("membership");
        this.stickerHelper = new StickerHelper(nVContext);
    }

    @Override // com.narvii.widget.NVListView.InterceptTouchEventListener
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        if (action == 1 || action == 3) {
            onTouchEventUp();
        }
        return this.previewing;
    }
}
