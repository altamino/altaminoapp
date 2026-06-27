package com.narvii.onlinestatus;

import android.view.View;
import android.view.ViewGroup;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.user.list.UserListAdapter;
import com.narvii.util.Callback;
import com.narvii.widget.MoodView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes3.dex */
public abstract class OnlineMembersAdapter extends UserListAdapter {
    @Override // com.narvii.user.list.UserListAdapter
    protected int layoutId() {
        return R.layout.online_user_item;
    }

    public OnlineMembersAdapter(NVContext nVContext) {
        super(nVContext);
        setDarkTheme(true);
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void refresh(int i, Callback<Integer> callback) {
        super.refresh(i | 512, callback);
    }

    @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
    protected List<User> filterResponseList(List<User> list, int i) {
        List listRawList = rawList();
        if (i != 2 && listRawList != null) {
            ArrayList arrayList = new ArrayList(list);
            arrayList.removeAll(listRawList);
            return super.filterResponseList(arrayList, i);
        }
        return super.filterResponseList(list, i);
    }

    @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        View itemView = super.getItemView(obj, view, viewGroup);
        User user = (User) obj;
        MoodView moodView = (MoodView) itemView.findViewById(R.id.mood);
        moodView.setOnClickListener(MoodView.SHAKE_ON_CLICK_LISTENER);
        moodView.setAnimate(true);
        moodView.setVisibility(Sticker.isEmpty(user.getMoodSticker()) ? 4 : 0);
        moodView.setMoodSticker(user);
        itemView.findViewById(R.id.online_status_oval).setVisibility(Sticker.isEmpty(user.getMoodSticker()) ? 0 : 4);
        return itemView;
    }
}
