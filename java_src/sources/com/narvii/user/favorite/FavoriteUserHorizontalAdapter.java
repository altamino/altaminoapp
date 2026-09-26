package com.narvii.user.favorite;

import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.model.api.UserListResponse;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.EmojioneView;
import com.narvii.widget.MoodView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import com.narvii.widget.recycleview.NVRecycleAdapter;

/* JADX INFO: loaded from: classes3.dex */
public class FavoriteUserHorizontalAdapter extends NVRecycleAdapter<User, UserListResponse> {
    private static final int ITEM_TYPE_NORMAL = 0;

    private class FavoriteUserViewHolder extends RecyclerView.ViewHolder {
        EmojioneView emojioneView;
        MoodView moodView;
        NicknameView nicknameView;
        View onlineView;
        UserAvatarLayout userAvatarLayout;

        public FavoriteUserViewHolder(View view) {
            super(view);
            this.userAvatarLayout = (UserAvatarLayout) view.findViewById(R.id.user_avatar_layout);
            this.nicknameView = (NicknameView) view.findViewById(R.id.nickname);
            this.moodView = (MoodView) view.findViewById(R.id.mood);
            this.emojioneView = (EmojioneView) view.findViewById(R.id.icon);
            this.onlineView = view.findViewById(R.id.online_status_oval);
        }
    }

    @Override // com.narvii.widget.recycleview.NVRecycleAdapter
    protected Class<User> dataType() {
        return User.class;
    }

    @Override // com.narvii.widget.recycleview.NVRecycleAdapter
    protected int getItemType(int i10, Object obj) {
        return 0;
    }

    @Override // com.narvii.widget.recycleview.NVRecycleAdapter
    protected int getItemTypeCount() {
        return 1;
    }

    protected int itemLayoutId() {
        return R.layout.item_favorite_user;
    }

    @Override // com.narvii.widget.recycleview.NVRecycleAdapter
    protected int pageSize() {
        return 20;
    }

    @Override // com.narvii.widget.recycleview.NVRecycleAdapter
    protected Class<? extends UserListResponse> responseType() {
        return UserListResponse.class;
    }

    @Override // com.narvii.widget.recycleview.NVRecycleAdapter
    protected boolean showListEnd(int i10) {
        return true;
    }

    @Override // com.narvii.widget.recycleview.NVRecycleAdapter
    protected void bindCustomViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
        if (viewHolder instanceof FavoriteUserViewHolder) {
            FavoriteUserViewHolder favoriteUserViewHolder = (FavoriteUserViewHolder) viewHolder;
            Object itemAt = getItemAt(i10);
            if (itemAt instanceof User) {
                User user = (User) itemAt;
                favoriteUserViewHolder.moodView.setAnimate(true);
                int i11 = 4;
                favoriteUserViewHolder.moodView.setVisibility((user.onlineStatus != 1 || Sticker.isEmpty(user.getMoodSticker())) ? 4 : 0);
                favoriteUserViewHolder.moodView.setMoodSticker(user);
                View view = favoriteUserViewHolder.onlineView;
                if (user.onlineStatus == 1 && Sticker.isEmpty(user.getMoodSticker())) {
                    i11 = 0;
                }
                view.setVisibility(i11);
                UserAvatarLayout userAvatarLayout = favoriteUserViewHolder.userAvatarLayout;
                if (userAvatarLayout != null) {
                    userAvatarLayout.setUser(user);
                }
                favoriteUserViewHolder.nicknameView.setUser(user);
            }
        }
    }

    @Override // com.narvii.widget.recycleview.NVRecycleAdapter
    public View createListEndItem(ViewGroup viewGroup, int i10) {
        return LayoutInflater.from(this.context.getContext()).inflate(R.layout.favorite_user_manage_item, viewGroup, false);
    }

    @Override // com.narvii.widget.recycleview.NVRecycleAdapter
    protected RecyclerView.ViewHolder getItemViewHolder(ViewGroup viewGroup, int i10) {
        if (i10 == 0) {
            return new FavoriteUserViewHolder(LayoutInflater.from(this.context.getContext()).inflate(itemLayoutId(), viewGroup, false));
        }
        return null;
    }

    public FavoriteUserHorizontalAdapter(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.widget.recycleview.NVRecycleAdapter
    protected ApiRequest createRequest(int i10, int i11, String str) {
        ApiRequest.Builder builderPath = ApiRequest.builder().path("/user-group/quick-access");
        builderPath.param("start", Integer.valueOf(i10));
        builderPath.param("size", Integer.valueOf(i11));
        if (!TextUtils.isEmpty(str)) {
            builderPath.param("stoptime", str);
        }
        return builderPath.build();
    }

    @Override // com.narvii.widget.recycleview.NVRecycleAdapter
    protected Object getItemAt(int i10) {
        return super.getItemAt(i10);
    }
}
