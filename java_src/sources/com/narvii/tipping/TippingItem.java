package com.narvii.tipping;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.narvii.amino.master.R;
import com.narvii.livelayer.LiveLayerOnlineBar;
import com.narvii.model.TippingInfo;
import com.narvii.model.User;
import com.narvii.util.CollectionUtils;
import com.narvii.util.ViewUtils;
import com.narvii.util.text.TextUtils;
import java.util.List;

/* JADX INFO: loaded from: classes8.dex */
public class TippingItem extends FrameLayout {
    boolean darkTheme;
    boolean isAuthor;
    TextView tippedCount;
    int tippersCount;
    TippingBoxView tippingBoxView;
    TippingInfo tippingInfo;
    List<User> userList;
    LiveLayerOnlineBar userListView;

    private void updateViews() {
        boolean z6 = false;
        this.userListView.setShouldFilterUserList(false);
        ViewUtils.show(this.userListView, (this.tippingInfo == null || CollectionUtils.isEmpty(this.userList)) ? false : true);
        if (this.tippingInfo != null) {
            this.userListView.setUserList(this.userList, this.tippersCount);
        }
        ViewUtils.show(this.tippedCount, this.tippingInfo != null && this.tippersCount > 0);
        if (this.isAuthor) {
            this.tippedCount.setText(TextUtils.getCountText(getContext(), this.tippersCount, R.string.one_tipped_count_author, R.string.n_tipped_count_author));
        } else {
            this.tippedCount.setText(TextUtils.getCountText(getContext(), this.tippersCount, R.string.one_tipped_count_viewer, R.string.n_tipped_count_viewer));
        }
        TippingBoxView tippingBoxView = this.tippingBoxView;
        boolean z10 = this.isAuthor;
        TippingInfo tippingInfo = this.tippingInfo;
        int i10 = tippingInfo != null ? tippingInfo.tippedCoins : 0;
        if (z10 && tippingInfo != null && tippingInfo.tippedCoins > 0 && !tippingInfo.tippable) {
            z6 = true;
        }
        tippingBoxView.setInfo(z10, i10, z6);
    }

    public void setDarkTheme(boolean z6) {
        if (this.darkTheme == z6) {
            return;
        }
        this.darkTheme = z6;
        this.tippedCount.setTextColor(z6 ? -1 : -9342087);
    }

    public void setTippingInfo(TippingInfo tippingInfo, List<User> list, boolean z6, int i10) {
        this.isAuthor = z6;
        this.tippingInfo = tippingInfo;
        this.userList = list;
        this.tippersCount = Math.max(CollectionUtils.getSize(list), i10);
        updateViews();
    }

    public TippingItem(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        super(context, attributeSet);
        View.inflate(getContext(), R.layout.tipping_layout, this);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.tippingBoxView = (TippingBoxView) findViewById(R.id.tipping_box);
        LiveLayerOnlineBar liveLayerOnlineBar = (LiveLayerOnlineBar) findViewById(R.id.member_list);
        this.userListView = liveLayerOnlineBar;
        liveLayerOnlineBar.setForceHideOnlineTextLayout(true);
        this.tippedCount = (TextView) findViewById(R.id.tipped_count);
    }
}
