package com.narvii.feed.quizzes;

import android.content.Intent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.amino.mastes.R;
import com.narvii.app.NVContext;
import com.narvii.feed.quizzes.mode.QuizzesResultResponse;
import com.narvii.feed.quizzes.mode.QuizzesResultWrapper;
import com.narvii.list.AdriftAdapter;
import com.narvii.list.NVPagedAdapter;
import com.narvii.list.ObjectItemClickListener;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.Impression.LinearImpressionCollector;
import com.narvii.model.Blog;
import com.narvii.model.User;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Utils;
import com.narvii.widget.Color3DTextView;
import com.narvii.widget.NicknameView;
import com.narvii.widget.RadiusLayout;
import com.narvii.widget.UserAvatarLayout;
import java.text.NumberFormat;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* loaded from: classes2.dex */
public abstract class QuizzesRankingListAdapter extends NVPagedAdapter<QuizzesResultWrapper, QuizzesResultResponse> {
    private ObjectItemClickListener itemClickListener;
    private boolean needImpression;

    @Override // com.narvii.list.NVAdapter, com.narvii.logging.Area
    public String getAreaName() {
        return "UserList";
    }

    protected int getBackgroundColor(boolean z) {
        return z ? 436207615 : 0;
    }

    protected abstract Blog getBlog();

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemType(Object obj) {
        return 0;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int getItemTypeCount() {
        return 1;
    }

    protected int getRadius() {
        return 0;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected int pageSize() {
        return 20;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected boolean tagCellAuto() {
        return false;
    }

    public QuizzesRankingListAdapter(NVContext nVContext) {
        super(nVContext);
        this.needImpression = true;
        setDarkTheme(true);
    }

    public void setNeedImpression(boolean z) {
        this.needImpression = z;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
    public void onAttach() {
        super.onAttach();
        if (this.needImpression) {
            addImpressionCollector(new LinearImpressionCollector(User.class));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<QuizzesResultWrapper> dataType() {
        return QuizzesResultWrapper.class;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.narvii.list.NVPagedAdapter
    public Class<? extends QuizzesResultResponse> responseType() {
        return QuizzesResultResponse.class;
    }

    public void setItemClickListener(ObjectItemClickListener objectItemClickListener) {
        this.itemClickListener = objectItemClickListener;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected List<QuizzesResultWrapper> filterResponseList(List<QuizzesResultWrapper> list, int i) {
        ArrayList arrayList = new ArrayList();
        List<QuizzesResultWrapper> listFilterResponseList = super.filterResponseList(list, i);
        Blog blog = getBlog();
        AccountService accountService = (AccountService) getService("account");
        if (accountService != null && blog != null) {
            User userProfile = accountService.getUserProfile();
            if (Utils.isEqualsNotNull(userProfile == null ? null : userProfile.uid(), blog.uid())) {
                arrayList.addAll(listFilterResponseList);
                return arrayList;
            }
            for (QuizzesResultWrapper quizzesResultWrapper : listFilterResponseList) {
                String strUid = blog.uid();
                User user = quizzesResultWrapper.userProfile;
                if (!Utils.isEqualsNotNull(strUid, user == null ? null : user.uid())) {
                    arrayList.add(quizzesResultWrapper);
                }
            }
        } else {
            arrayList.addAll(listFilterResponseList);
        }
        return arrayList;
    }

    @Override // com.narvii.list.NVPagedAdapter
    protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
        if (!(obj instanceof QuizzesResultWrapper)) {
            return null;
        }
        QuizzesResultWrapper quizzesResultWrapper = (QuizzesResultWrapper) obj;
        User user = quizzesResultWrapper.userProfile;
        View viewCreateView = createView(R.layout.item_quizzes_ranking_user_layout, viewGroup, view);
        TextView textView = (TextView) viewCreateView.findViewById(R.id.ranking_no);
        ImageView imageView = (ImageView) viewCreateView.findViewById(R.id.ranking_no_icon);
        int iIndexOf = list().indexOf(obj) + 1;
        if (iIndexOf > 3) {
            textView.setText(String.format(Locale.US, "%02d", Integer.valueOf(iIndexOf)));
            textView.setVisibility(0);
            imageView.setVisibility(8);
        } else {
            if (iIndexOf == 1) {
                imageView.setImageResource(R.drawable.ic_quiz_result_medal_1);
            } else if (iIndexOf == 2) {
                imageView.setImageResource(R.drawable.ic_quiz_result_medal_2);
            } else if (iIndexOf == 3) {
                imageView.setImageResource(R.drawable.ic_quiz_result_medal_3);
            }
            textView.setVisibility(8);
            imageView.setVisibility(0);
        }
        Color3DTextView color3DTextView = (Color3DTextView) viewCreateView.findViewById(R.id.scores);
        if (quizzesResultWrapper.highestMode == 1) {
            color3DTextView.setTextColors(new int[]{-2171, -10657});
            color3DTextView.setShadowColor(-28898);
        } else {
            color3DTextView.setTextColors(new int[]{-1, -1});
            color3DTextView.setShadowColor(0);
        }
        color3DTextView.setText(NumberFormat.getInstance(Locale.US).format(Integer.valueOf(quizzesResultWrapper.highestScore)));
        NicknameView nicknameView = (NicknameView) viewCreateView.findViewById(R.id.nickname);
        if (user != null) {
            nicknameView.setUser(user);
            ((UserAvatarLayout) viewCreateView.findViewById(R.id.user_avatar_layout)).setUser(user);
        }
        viewCreateView.setBackgroundColor(getBackgroundColor(isMe(user)));
        boolean zIsEquals = Utils.isEquals(obj, list().get(list().size() - 1));
        viewCreateView.findViewById(R.id.divider).setVisibility(zIsEquals ? 8 : 0);
        if (viewCreateView instanceof RadiusLayout) {
            if (zIsEquals) {
                ((RadiusLayout) viewCreateView).setRadius(0, 0, getRadius(), getRadius());
            } else {
                ((RadiusLayout) viewCreateView).setRadius(0, 0, 0, 0);
            }
        }
        View viewFindViewById = viewCreateView.findViewById(R.id.quiz_finish);
        View viewFindViewById2 = viewCreateView.findViewById(R.id.quiz_hell_finish);
        boolean z = quizzesResultWrapper.hellIsFinished;
        viewFindViewById2.setVisibility(z ? 0 : 8);
        viewFindViewById.setVisibility(quizzesResultWrapper.isFinished && !z ? 0 : 8);
        tagCellForLog(viewCreateView, user);
        return viewCreateView;
    }

    @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
    public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
        if (obj instanceof QuizzesResultWrapper) {
            User user = ((QuizzesResultWrapper) obj).userProfile;
            if (this.needImpression) {
                logClickEvent(user, ActSemantic.checkDetail);
            } else {
                ObjectItemClickListener objectItemClickListener = this.itemClickListener;
                if (objectItemClickListener != null) {
                    objectItemClickListener.onItemClick(user);
                }
            }
            Intent intent = UserProfileFragment.intent(this, user);
            intent.putExtra("Source", "Quiz Ranking Table");
            startActivity(intent);
        }
        return super.onItemClick(listAdapter, i, obj, view, view2);
    }

    private boolean isMe(User user) {
        return user != null && Utils.isEqualsNotNull(((AccountService) getService("account")).getUserId(), user.id());
    }

    public void fitHoverTitleView(View view) {
        view.setBackgroundColor(getBackgroundColor(false));
        if (view instanceof RadiusLayout) {
            ((RadiusLayout) view).setRadius(getRadius(), getRadius(), 0, 0);
        }
    }

    public class RankingListTitleAdapter extends AdriftAdapter {
        @Override // com.narvii.list.AdriftAdapter, android.widget.Adapter
        public int getCount() {
            return 1;
        }

        @Override // com.narvii.list.AdriftAdapter
        protected boolean isDarkTheme() {
            return true;
        }

        public RankingListTitleAdapter(NVContext nVContext) {
            super(nVContext);
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            View viewCreateView = createView(R.layout.quizzes_result_list_title, viewGroup, view);
            viewCreateView.setBackgroundColor(QuizzesRankingListAdapter.this.getBackgroundColor(false));
            if (viewCreateView instanceof RadiusLayout) {
                ((RadiusLayout) viewCreateView).setRadius(QuizzesRankingListAdapter.this.getRadius(), QuizzesRankingListAdapter.this.getRadius(), 0, 0);
            }
            return viewCreateView;
        }
    }
}
