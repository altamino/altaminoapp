package com.narvii.onlinestatus;

import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.user.list.UserListAdapter;
import com.narvii.util.Callback;
import com.narvii.widget.MoodView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public abstract class OnlineMembersAdapter extends UserListAdapter {
    @Override // com.narvii.user.list.UserListAdapter
    protected int layoutId() {
        return R.layout.online_user_item;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void refresh(int i10, Callback<Integer> callback) {
        super.refresh(i10 | 512, callback);
    }

    public OnlineMembersAdapter(NVContext nVContext) {
        super(nVContext);
        setDarkTheme(true);
    }

    @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
    protected List<User> filterResponseList(List<User> list, int i10) {
        List listRawList = rawList();
        if (i10 != 2 && listRawList != null) {
            ArrayList arrayList = new ArrayList(list);
            arrayList.removeAll(listRawList);
            return super.filterResponseList(arrayList, i10);
        }
        return super.filterResponseList(list, i10);
    }

    @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        int i10;
        View itemView = super.getItemView(obj, view, viewGroup);
        User user = (User) obj;
        MoodView moodView = (MoodView) itemView.findViewById(R.id.mood);
        moodView.setOnClickListener(MoodView.SHAKE_ON_CLICK_LISTENER);
        moodView.setAnimate(true);
        int i11 = 0;
        if (Sticker.isEmpty(user.getMoodSticker())) {
            i10 = 4;
        } else {
            i10 = 0;
        }
        moodView.setVisibility(i10);
        moodView.setMoodSticker(user);
        View viewFindViewById = itemView.findViewById(R.id.online_status_oval);
        if (!Sticker.isEmpty(user.getMoodSticker())) {
            i11 = 4;
        }
        viewFindViewById.setVisibility(i11);
        return itemView;
    }
}
