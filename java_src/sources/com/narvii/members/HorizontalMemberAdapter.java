package com.narvii.members;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.logging.LogUtils;
import com.narvii.model.Sticker;
import com.narvii.model.User;
import com.narvii.model.api.UserListResponse;
import com.narvii.util.FilterHelper;
import com.narvii.util.Utils;
import com.narvii.widget.MoodView;
import com.narvii.widget.NVImageView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import com.narvii.widget.recycleview.NVRecycleAdapter;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class HorizontalMemberAdapter extends NVRecycleAdapter<User, UserListResponse> {
    protected static final int ITEM_TYPE_END = 1;
    protected static final int ITEM_TYPE_NORMAL = 0;

    private class EndViewHolder extends RecyclerView.ViewHolder {
        NVImageView avatar;

        public EndViewHolder(View view) {
            super(view);
            this.avatar = (NVImageView) view.findViewById(R.id.avatar);
        }
    }

    protected class UserViewHolder extends RecyclerView.ViewHolder {
        ImageView badgeView;
        MoodView moodView;
        NicknameView nicknameView;
        View onlineView;
        UserAvatarLayout userAvatarLayout;

        public UserViewHolder(View view) {
            super(view);
            this.userAvatarLayout = (UserAvatarLayout) view.findViewById(R.id.user_avatar_layout);
            this.nicknameView = (NicknameView) view.findViewById(R.id.nickname);
            this.badgeView = (ImageView) view.findViewById(R.id.badge);
            this.moodView = (MoodView) view.findViewById(R.id.mood);
            this.onlineView = view.findViewById(R.id.online_status_oval);
        }
    }

    @Override // com.narvii.widget.recycleview.NVRecycleAdapter
    protected Class<User> dataType() {
        return User.class;
    }

    protected int getEndItemLayoutId() {
        return R.layout.live_layer_main_online_member_list_end;
    }

    @Override // com.narvii.widget.recycleview.NVRecycleAdapter
    protected int getItemTypeCount() {
        return 2;
    }

    @Override // com.narvii.widget.recycleview.NVRecycleAdapter
    protected RecyclerView.ViewHolder getItemViewHolder(ViewGroup viewGroup, int i10) {
        if (i10 == 0) {
            return new UserViewHolder(LayoutInflater.from(this.context.getContext()).inflate(getNormalItemLayoutId(), viewGroup, false));
        }
        if (i10 == 1) {
            return new EndViewHolder(LayoutInflater.from(this.context.getContext()).inflate(getEndItemLayoutId(), viewGroup, false));
        }
        return null;
    }

    protected abstract int getNormalItemLayoutId();

    @Override // com.narvii.widget.recycleview.NVRecycleAdapter
    protected Class<? extends UserListResponse> responseType() {
        return UserListResponse.class;
    }

    protected abstract boolean shouldShakeMoods();

    @Override // com.narvii.widget.recycleview.NVRecycleAdapter
    protected void bindCustomViewHolder(RecyclerView.ViewHolder viewHolder, int i10) {
        if (!(viewHolder instanceof UserViewHolder)) {
            if (viewHolder instanceof EndViewHolder) {
                EndViewHolder endViewHolder = (EndViewHolder) viewHolder;
                endViewHolder.itemView.setVisibility(0);
                Object itemAt = getItemAt(i10);
                if (itemAt instanceof User) {
                    User user = (User) itemAt;
                    NVImageView nVImageView = endViewHolder.avatar;
                    if (nVImageView != null) {
                        nVImageView.setImageUrl(user.icon());
                    }
                    if (Utils.isRtl()) {
                        ((ViewGroup.MarginLayoutParams) endViewHolder.itemView.getLayoutParams()).leftMargin = getDefaultPadding();
                        return;
                    } else {
                        ((ViewGroup.MarginLayoutParams) endViewHolder.itemView.getLayoutParams()).rightMargin = getDefaultPadding();
                        return;
                    }
                }
                return;
            }
            return;
        }
        UserViewHolder userViewHolder = (UserViewHolder) viewHolder;
        Object itemAt2 = getItemAt(i10);
        if (itemAt2 instanceof User) {
            User user2 = (User) itemAt2;
            userViewHolder.moodView.setAnimate(true);
            if (shouldShakeMoods()) {
                userViewHolder.moodView.shakeCrazily();
            }
            int i11 = 4;
            userViewHolder.moodView.setVisibility((user2.onlineStatus != 1 || Sticker.isEmpty(user2.getMoodSticker())) ? 4 : 0);
            userViewHolder.moodView.setMoodSticker(user2);
            View view = userViewHolder.onlineView;
            if (user2.onlineStatus == 1 && Sticker.isEmpty(user2.getMoodSticker())) {
                i11 = 0;
            }
            view.setVisibility(i11);
            UserAvatarLayout userAvatarLayout = userViewHolder.userAvatarLayout;
            if (userAvatarLayout != null) {
                userAvatarLayout.setUser(user2);
            }
            userViewHolder.nicknameView.setUser(user2);
            LogUtils.setAttachedObject(viewHolder.itemView, user2);
            if (i10 != 0) {
                ((ViewGroup.MarginLayoutParams) userViewHolder.itemView.getLayoutParams()).leftMargin = 0;
                ((ViewGroup.MarginLayoutParams) userViewHolder.itemView.getLayoutParams()).rightMargin = 0;
            } else if (Utils.isRtl()) {
                ((ViewGroup.MarginLayoutParams) userViewHolder.itemView.getLayoutParams()).rightMargin = getDefaultPadding();
            } else {
                ((ViewGroup.MarginLayoutParams) userViewHolder.itemView.getLayoutParams()).leftMargin = getDefaultPadding();
            }
        }
    }

    @Override // com.narvii.widget.recycleview.NVRecycleAdapter
    protected List<User> filterResponseList(List<User> list) {
        return new FilterHelper(this.context).filter(list);
    }

    protected int getDefaultPadding() {
        return this.context.getContext().getResources().getDimensionPixelOffset(R.dimen.default_padding_horizontal);
    }

    public HorizontalMemberAdapter(NVContext nVContext) {
        super(nVContext);
    }

    @Override // com.narvii.widget.recycleview.NVRecycleAdapter
    protected int getItemType(int i10, Object obj) {
        if (getEndItemLayoutId() == 0 && i10 >= pageSize() - 1) {
            return 1;
        }
        return 0;
    }
}
