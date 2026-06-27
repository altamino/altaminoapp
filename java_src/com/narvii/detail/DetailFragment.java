package com.narvii.detail;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.support.v4.content.ContextCompat;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVActivity;
import com.narvii.list.NVListFragment;
import com.narvii.model.AuthorGetter;
import com.narvii.model.Media;
import com.narvii.model.NVObject;
import com.narvii.model.StrategyObject;
import com.narvii.model.User;
import com.narvii.semicontext.SemiStateTransfer;
import com.narvii.util.Log;
import com.narvii.util.NVToast;
import com.narvii.util.Utils;
import com.narvii.util.ViewUtils;
import com.narvii.widget.FullscreenBackgroundView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes2.dex */
public abstract class DetailFragment extends NVListFragment implements SemiStateTransfer {
    protected boolean _hasBackground;
    protected boolean _isBackgroundDark;
    AccountService accountService;
    protected FullscreenBackgroundView backgroundView;
    protected boolean disabled;
    protected TextView disabledBar;
    protected String liveLayerTarget;
    public boolean preview;
    public final List<String> actions = new ArrayList();
    public final HashMap<String, Object> params = new HashMap<>();

    protected boolean changeActionBarBackground() {
        return true;
    }

    public NVObject getDetailNVObject() {
        return null;
    }

    protected int getDetailObjectDisableStrId() {
        return R.string.detail_disabled_message;
    }

    protected int objectType() {
        return -1;
    }

    protected void onNotAvailableChanged(boolean z) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean hasBackground() {
        return this._hasBackground;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isBackgroundColorDark() {
        return this._isBackgroundDark && this._hasBackground;
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.accountService = (AccountService) getService("account");
        this.preview = getBooleanParam("preview", false);
        if (this.preview || !TextUtils.isEmpty(id())) {
            return;
        }
        finish();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment
    public void onActiveChanged(boolean z) {
        super.onActiveChanged(z);
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.detail_frame, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        if (this.preview) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(R.layout.actionbar_left_button, (ViewGroup) null);
            TextView textView = (TextView) viewInflate.findViewById(R.id.text);
            textView.setText(R.string.close_preview);
            textView.setOnClickListener(NVActivity.BACK_CLICK_LISTENER);
            setActionBarLeftView(viewInflate);
        }
        this.disabledBar = (TextView) view.findViewById(R.id.disabled_bar);
        this.backgroundView = (FullscreenBackgroundView) view.findViewById(R.id.background);
        super.onViewCreated(view, bundle);
        getListView().setDivider(null);
        getListView().setDividerHeight(0);
    }

    @Override // com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onActivityCreated(Bundle bundle) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
        super.onActivityCreated(bundle);
        if (getActivity().getIntent().hasExtra("__savedListFirstPos")) {
            final int intExtra = getActivity().getIntent().getIntExtra("__savedListFirstPos", 0);
            final long longExtra = getActivity().getIntent().getLongExtra("__savedListFirstId", 0L);
            final int intExtra2 = getActivity().getIntent().getIntExtra("__savedListFirstY", 0);
            Utils.post(new Runnable() { // from class: com.narvii.detail.DetailFragment.1
                int c = 0;

                @Override // java.lang.Runnable
                public void run() {
                    if (DetailFragment.this.getListView().getAdapter() != null && DetailFragment.this.getListView().getAdapter().getCount() > 0 && intExtra < DetailFragment.this.getListView().getAdapter().getCount() && longExtra == DetailFragment.this.getListView().getAdapter().getItemId(intExtra)) {
                        DetailFragment.this.getListView().setSelectionFromTop(intExtra, intExtra2);
                        return;
                    }
                    int i = this.c;
                    this.c = i + 1;
                    if (i < 20) {
                        Utils.postDelayed(this, 30L);
                    }
                }
            });
        }
    }

    public Intent getTransferIntent(Intent intent) {
        int firstVisiblePosition;
        if (getListView() != null && getListView().getAdapter() != null && getListView().getChildCount() > 0 && (firstVisiblePosition = getListView().getFirstVisiblePosition()) >= 0 && firstVisiblePosition < getListView().getAdapter().getCount()) {
            int top = getListView().getChildAt(0).getTop();
            long itemId = getListView().getAdapter().getItemId(firstVisiblePosition);
            intent.putExtra("__savedListFirstPos", firstVisiblePosition);
            intent.putExtra("__savedListFirstId", itemId);
            intent.putExtra("__savedListFirstY", top);
        }
        return intent;
    }

    public String id() {
        return getStringParam("id");
    }

    public void setDisabledStatus(NVObject nVObject) {
        if (nVObject == null) {
            return;
        }
        boolean zShouldShowDisableBar = shouldShowDisableBar(nVObject);
        this.disabled = zShouldShowDisableBar;
        int totalOverlaySize = getTotalOverlaySize();
        boolean z = false;
        if (zShouldShowDisableBar) {
            if (changeActionBarBackground()) {
                setActionBarBackground(new ColorDrawable(getResources().getColor(R.color.disabled)));
            }
            TextView textView = this.disabledBar;
            if (textView != null) {
                textView.setPadding(0, totalOverlaySize, 0, 40);
                this.disabledBar.setVisibility(0);
                int disableStrId = getDisableStrId(nVObject);
                if (disableStrId != 0) {
                    this.disabledBar.setText(disableStrId);
                }
            }
        } else {
            if (changeActionBarBackground()) {
                setActionBarBackground(new ColorDrawable(0));
                if (getActivity() instanceof NVActivity) {
                    ((NVActivity) getActivity()).setStatusBar();
                }
            }
            TextView textView2 = this.disabledBar;
            if (textView2 != null) {
                textView2.setVisibility(8);
            }
        }
        boolean zShouldShowNotAvailable = shouldShowNotAvailable(nVObject);
        if (getView() != null && getView().findViewById(R.id.not_available_layout) != null) {
            z = true;
        }
        if (z) {
            ViewUtils.show(getView(), R.id.list_frame, !zShouldShowNotAvailable);
            showNotAvailableView(R.string.page_not_available, zShouldShowNotAvailable);
            onNotAvailableChanged(zShouldShowNotAvailable);
        } else if (zShouldShowNotAvailable) {
            Log.d("disable", "has no not available layout");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected int getDisableStrId(NVObject nVObject) {
        User author;
        if (nVObject == 0) {
            return 0;
        }
        if (nVObject.isAccessibleByUserItSelf(null) && (nVObject instanceof AuthorGetter) && (author = ((AuthorGetter) nVObject).getAuthor()) != null) {
            if (author.isDisabled()) {
                return R.string.detail_disabled_message_user;
            }
            if (author.isDeleted()) {
                return R.string.detail_deleted_message_user;
            }
        }
        return getDetailObjectDisableStrId();
    }

    protected boolean shouldShowDisableBar(NVObject nVObject) {
        if (nVObject == null) {
            return false;
        }
        return !nVObject.isAccessibleByUser(null);
    }

    protected boolean shouldShowNotAvailable(NVObject nVObject) {
        if (nVObject == null) {
            return false;
        }
        return !nVObject.isAccessibleByUser(this.accountService.getUserProfile());
    }

    public void showNotAvailableView(int i) {
        showNotAvailableView(i, true);
    }

    public void showNotAvailableView(int i, boolean z) {
        ViewUtils.show(getView(), R.id.not_available_layout, z);
        ViewUtils.setText(getView(), R.id.not_available_text, i);
    }

    public void setDisabledText(CharSequence charSequence) {
        TextView textView = this.disabledBar;
        if (textView instanceof TextView) {
            textView.setText(charSequence);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean shouldBlockClick(Object obj) {
        if (!this.preview || (obj instanceof Media)) {
            return false;
        }
        showPreviewToast(getContext());
        return true;
    }

    public static void showPreviewToast(Context context) {
        NVToast.makeText(context, R.string.this_is_preview, 0).show();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setTextColor(View view, int i, int i2) {
        setTextColor(view, i, i2, -1);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setTextColor(View view, int i, int i2, int i3) {
        if (isDarkTheme()) {
            i2 = i3;
        }
        ViewUtils.setTextColor(view, i, i2);
    }

    protected void setImageStrokeColor(View view, int i, int i2) {
        if (isDarkTheme()) {
            i2 = -1;
        }
        ViewUtils.setImageStrokeColor(view, i, i2);
    }

    protected void setTextColorSelector(View view, int i, int i2, int i3) {
        TextView textView = ViewUtils.getTextView(view, i);
        if (textView != null) {
            Context context = getContext();
            if (isDarkTheme()) {
                i2 = i3;
            }
            textView.setTextColor(ContextCompat.getColor(context, i2));
        }
    }

    protected void setBackgroundColor(View view, int i, int i2, int i3) {
        View viewFindViewById = view.findViewById(i);
        if (viewFindViewById != null) {
            if (isDarkTheme()) {
                i2 = i3;
            }
            viewFindViewById.setBackgroundResource(i2);
        }
    }

    public int commentExtraHeight() {
        int firstVisiblePosition;
        ListView listView = getListView();
        ListAdapter listAdapter = getListAdapter();
        int count = listAdapter.getCount();
        int i = -1;
        int i2 = -1;
        for (int i3 = 0; i3 < count; i3++) {
            Object item = listAdapter.getItem(i3);
            if (item == DetailAdapter.COMMENT_HEADER || item == DetailAdapter.COMMENT_ADD) {
                i = i3;
            } else if (item == DetailAdapter._RELATED_PAGES) {
                i2 = i3;
            }
        }
        if (i != -1) {
            int height = listView.getHeight();
            if (i2 != -1 && (firstVisiblePosition = i2 - listView.getFirstVisiblePosition()) >= 0 && firstVisiblePosition < listView.getChildCount()) {
                height = listView.getChildAt(firstVisiblePosition).getTop();
            }
            int firstVisiblePosition2 = i - listView.getFirstVisiblePosition();
            if (firstVisiblePosition2 >= 0 && firstVisiblePosition2 < listView.getChildCount()) {
                return Math.max(height - listView.getChildAt(firstVisiblePosition2).getBottom(), 0);
            }
        }
        return 0;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getStrategyInfo() {
        Cloneable detailNVObject = getDetailNVObject();
        if (detailNVObject instanceof StrategyObject) {
            return ((StrategyObject) detailNVObject).getStrategyInfo();
        }
        return super.getStrategyInfo();
    }
}
