package com.narvii.tipping;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.livelayer.LiveLayerOnlineBar;
import com.narvii.model.TippingInfo;
import com.narvii.model.User;
import com.narvii.util.CollectionUtils;
import com.narvii.util.ViewUtils;
import com.narvii.util.text.TextUtils;
import java.util.List;

/* loaded from: classes3.dex */
public class TippingItem extends FrameLayout {
    boolean darkTheme;
    boolean isAuthor;
    TextView tippedCount;
    int tippersCount;
    TippingBoxView tippingBoxView;
    TippingInfo tippingInfo;
    List<User> userList;
    LiveLayerOnlineBar userListView;

    public TippingItem(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        FrameLayout.inflate(getContext(), R.layout.tipping_layout, this);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.tippingBoxView = (TippingBoxView) findViewById(R.id.tipping_box);
        this.userListView = (LiveLayerOnlineBar) findViewById(R.id.member_list);
        this.userListView.setForceHideOnlineTextLayout(true);
        this.tippedCount = (TextView) findViewById(R.id.tipped_count);
    }

    public void setTippingInfo(TippingInfo tippingInfo, List<User> list, boolean z, int i) throws Resources.NotFoundException {
        this.isAuthor = z;
        this.tippingInfo = tippingInfo;
        this.userList = list;
        this.tippersCount = Math.max(CollectionUtils.getSize(list), i);
        updateViews();
    }

    public void setDarkTheme(boolean z) {
        if (this.darkTheme == z) {
            return;
        }
        this.darkTheme = z;
        this.tippedCount.setTextColor(z ? -1 : -9342087);
    }

    private void updateViews() throws Resources.NotFoundException {
        TippingInfo tippingInfo;
        boolean z = false;
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
        boolean z2 = this.isAuthor;
        TippingInfo tippingInfo2 = this.tippingInfo;
        int i = tippingInfo2 != null ? tippingInfo2.tippedCoins : 0;
        if (this.isAuthor && (tippingInfo = this.tippingInfo) != null && tippingInfo.tippedCoins > 0 && !tippingInfo.tippable) {
            z = true;
        }
        tippingBoxView.setInfo(z2, i, z);
    }
}
