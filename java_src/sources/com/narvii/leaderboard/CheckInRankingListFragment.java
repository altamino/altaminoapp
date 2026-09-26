package com.narvii.leaderboard;

import android.content.Intent;
import android.graphics.LinearGradient;
import android.graphics.Point;
import android.graphics.Shader;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PaintDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import com.narvii.account.AccountService;
import com.narvii.adapter.MarginAdapter;
import com.narvii.amino.master.R;
import com.narvii.app.FragmentWrapperActivity;
import com.narvii.checkin.CheckInBottomBarLayout;
import com.narvii.community.AffiliationsService;
import com.narvii.config.ConfigService;
import com.narvii.headlines.ExternalPostPreviewFragment;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVArrayAdapter;
import com.narvii.logging.ActSemantic;
import com.narvii.logging.LogEvent;
import com.narvii.model.CheckInRanking;
import com.narvii.model.User;
import com.narvii.model.api.UserListResponse;
import com.narvii.modulization.Module;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.ranking.RankingService;
import com.narvii.wallet.optinads.OptinAdsUtil;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import com.safedk.android.utils.Logger;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public class CheckInRankingListFragment extends ShareHeaderFragment implements AffiliationsService.AffiliationChangeListener {
    private static final int CELL_THRESHOLD_COUNT = 2;
    private static final int COUNT_COLUMN = 5;
    private static final int DEFAULT_CELL_COUNT = 5;
    private static final float DEFAULT_CELL_MARGIN_WIDTH = 0.1f;
    private static final float DEFAULT_CELL_SCALE_WIDTH = 1.2f;
    private static final int MAX_CELL_WITH = 80;
    private static final int MIN_CELL_WITH = 40;
    CheckInListAdapter adapter;
    private AffiliationsService affiliationsService;
    private float cellWidth;
    private CheckInBottomBarLayout checkInBottomBarLayout;
    private int countColumn;
    private float interPadding;
    LeaderBoardHelper leaderBoardHelper;
    RankingService rankingService;
    private UserDataAdapter userDataAdapter;

    class CheckInListAdapter extends NVArrayAdapter<CheckInRanking> {
        List<CheckInRanking> filteredList;
        List<CheckInRanking> oList;

        private Drawable getCellDrawable(int i10) {
            final int[] iArr;
            if (i10 == 1) {
                iArr = new int[]{-7422481, -11359233, -7422481};
            } else {
                iArr = i10 == 2 ? new int[]{-3638292, -3647490, -1666817} : new int[]{-1192050, -1263295, -1389478};
            }
            ShapeDrawable.ShaderFactory shaderFactory = new ShapeDrawable.ShaderFactory() { // from class: com.narvii.leaderboard.CheckInRankingListFragment.CheckInListAdapter.1
                @Override // android.graphics.drawable.ShapeDrawable.ShaderFactory
                public Shader resize(int i11, int i12) {
                    return new LinearGradient(0.0f, 0.0f, 0.0f, i12, iArr, new float[]{0.0f, 0.05f, 1.0f}, Shader.TileMode.CLAMP);
                }
            };
            PaintDrawable paintDrawable = new PaintDrawable();
            paintDrawable.setShape(new RectShape());
            paintDrawable.setCornerRadius(Utils.dpToPx(getContext(), 10.0f));
            paintDrawable.setShaderFactory(shaderFactory);
            return paintDrawable;
        }

        public static void safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(NVAdapter p0, Intent p1) {
            Logger.d("SafeDK-Special|SafeDK: Call> Lcom/narvii/list/NVAdapter;->startActivity(Landroid/content/Intent;)V");
            if (p1 == null) {
                return;
            }
            p0.startActivity(p1);
        }

        public void setFragmentVisible(boolean z6) {
        }

        public CheckInListAdapter() {
            super(CheckInRankingListFragment.this, CheckInRanking.class);
        }

        private View createGridCell(View view, ViewGroup viewGroup, CheckInRanking checkInRanking) {
            List<User> list;
            AccountService accountService = (AccountService) getService("account");
            String strUid = accountService.getUserProfile() != null ? accountService.getUserProfile().uid() : null;
            boolean z6 = checkInRanking == null || (list = checkInRanking.userProfileList) == null || list.size() == 0;
            if (view == null) {
                view = createView(R.layout.item_leaderboard_checkin, viewGroup, view);
            }
            ((Button) view.findViewById(R.id.check_in_see_all)).setOnClickListener(this.subviewClickListener);
            configCellUI(checkInRanking, view);
            GridLayout gridLayout = (GridLayout) view.findViewById(R.id.user_grid_layout);
            if (z6) {
                view.setVisibility(8);
                return view;
            }
            List<User> list2 = checkInRanking.userProfileList;
            int size = list2 != null ? list2.size() : 0;
            if (CheckInRankingListFragment.this.countColumn == 0) {
                CheckInRankingListFragment.this.countColumn = 5;
            }
            int i10 = size / CheckInRankingListFragment.this.countColumn;
            if (size % CheckInRankingListFragment.this.countColumn > CheckInRankingListFragment.this.countColumn / 2) {
                i10++;
            }
            if (i10 > 4) {
                i10 = 4;
            }
            int childCount = gridLayout.getChildCount();
            int i11 = CheckInRankingListFragment.this.countColumn * i10;
            if (childCount > i11) {
                for (int i12 = i11; i12 < childCount; i12++) {
                    gridLayout.removeViewAt(i11);
                }
            }
            gridLayout.setColumnCount(CheckInRankingListFragment.this.countColumn);
            try {
                gridLayout.setRowCount(i10);
            } catch (Exception unused) {
            }
            gridLayout.setPadding((int) CheckInRankingListFragment.this.interPadding, gridLayout.getPaddingTop(), (int) CheckInRankingListFragment.this.interPadding, gridLayout.getPaddingBottom());
            if (CheckInRankingListFragment.this.countColumn * i10 <= size) {
                size = CheckInRankingListFragment.this.countColumn * i10;
            }
            int i13 = 0;
            while (i13 < size) {
                User user = checkInRanking.userProfileList.get(i13);
                View childAt = gridLayout.getChildCount() > i13 ? gridLayout.getChildAt(i13) : null;
                if (user != null) {
                    if (childAt == null) {
                        childAt = this.inflater.inflate(R.layout.item_checkin_user, (ViewGroup) gridLayout, false);
                        gridLayout.addView(childAt);
                    }
                    childAt.setVisibility(0);
                    childAt.setOnClickListener(this.subviewClickListener);
                    childAt.setTag(user);
                    childAt.setOnClickListener(this.subviewClickListener);
                    ((UserAvatarLayout) childAt.findViewById(R.id.user_avatar_layout)).setUser(user);
                    boolean zIsEqualsNotNull = Utils.isEqualsNotNull(user.uid, strUid);
                    user.nickname = zIsEqualsNotNull ? CheckInRankingListFragment.this.getString(R.string.me) : user.nickname;
                    NicknameView nicknameView = (NicknameView) childAt.findViewById(R.id.nickname);
                    nicknameView.setUser(user);
                    nicknameView.setBackgroundResource(zIsEqualsNotNull ? R.drawable.round_white_corner_25 : 0);
                } else if (childAt != null) {
                    childAt.setVisibility(8);
                }
                if (childAt != null) {
                    ViewGroup.LayoutParams layoutParams = childAt.getLayoutParams();
                    layoutParams.width = (int) CheckInRankingListFragment.this.cellWidth;
                    if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
                        int i14 = (int) (CheckInRankingListFragment.this.cellWidth * 0.1f);
                        int i15 = i14 / 2;
                        ((ViewGroup.MarginLayoutParams) layoutParams).setMargins(i14, i15, i14, i15);
                    }
                }
                i13++;
            }
            return view;
        }

        private List<User> reOrderUserList(List<User> list, String str) {
            ArrayList arrayList = new ArrayList();
            if (list != null && list.size() > 0 && !TextUtils.isEmpty(str)) {
                int iIndexOfId = Utils.indexOfId(list, str);
                if (iIndexOfId >= 0) {
                    arrayList.add(list.get(iIndexOfId));
                    list.remove(iIndexOfId);
                    arrayList.addAll(list);
                } else {
                    arrayList.addAll(list);
                }
            }
            return arrayList;
        }

        public List<CheckInRanking> filterList(List<CheckInRanking> list) {
            List<User> list2;
            if (list == null || list.size() == 0) {
                return new ArrayList();
            }
            AccountService accountService = (AccountService) getService("account");
            String strUid = accountService.getUserProfile() != null ? accountService.getUserProfile().uid() : null;
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < list.size(); i10++) {
                CheckInRanking checkInRanking = list.get(i10);
                if (!CheckInRankingListFragment.this.isCellEmpty(checkInRanking)) {
                    if (!TextUtils.isEmpty(strUid) && (list2 = checkInRanking.userProfileList) != null && list2.size() > 0) {
                        checkInRanking.userProfileList = reOrderUserList(list2, strUid);
                    }
                    arrayList.add(checkInRanking);
                }
            }
            return arrayList;
        }

        /* JADX WARN: Code duplicated, block: B:15:0x0020  */
        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            String str;
            if (view2 != null) {
                boolean z6 = obj instanceof CheckInRanking;
                if (z6) {
                    int i11 = ((CheckInRanking) obj).minStreak;
                    if (i11 == 7) {
                        str = "1WeekStreak";
                    } else if (i11 == 14) {
                        str = "2WeekStreak";
                    } else if (i11 != 30) {
                        str = "DaysStreak";
                    } else {
                        str = "1MonthStreak";
                    }
                } else {
                    str = "DaysStreak";
                }
                if (view2.getId() == R.id.check_in_see_all) {
                    CheckInRankingListFragment checkInRankingListFragment = CheckInRankingListFragment.this;
                    checkInRankingListFragment.leaderBoardHelper.saveDynamicThemeBg(checkInRankingListFragment.getActivity());
                    Intent intent = FragmentWrapperActivity.intent(CheckinRegionFragment.class);
                    if (z6) {
                        CheckInRanking checkInRanking = (CheckInRanking) obj;
                        intent.putExtra(CheckinRegionFragment.KEY_MIN, checkInRanking.minStreak);
                        intent.putExtra(CheckinRegionFragment.KEY_MAX, checkInRanking.maxStreak);
                        intent.putExtra("title", checkInRanking.title);
                    }
                    if (intent == null) {
                        return true;
                    }
                    LogEvent.clickBuilder(this, ActSemantic.listViewEnter).area(str).send();
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent);
                    return true;
                }
                if (view2.getTag() instanceof User) {
                    User user = (User) view2.getTag();
                    Intent intent2 = UserProfileFragment.intent(this, user);
                    if (intent2 == null) {
                        return true;
                    }
                    intent2.putExtra(ExternalPostPreviewFragment.SOURCE, "Leaderboard");
                    LogEvent.clickBuilder(this, ActSemantic.checkDetail).area(str).object(user).send();
                    safedk_NVAdapter_startActivity_5b31acbff248f36f6c86407552449fc2(this, intent2);
                    return true;
                }
            }
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i10, Callback<Integer> callback) {
            CheckInRankingListFragment.this.updateViews();
            refreshMonitorStart(i10, callback);
            refreshMonitorEnd();
        }

        public void setData(List<CheckInRanking> list) {
            this.oList = list;
            this.filteredList = filterList(list);
            super.setList(new ArrayList(this.filteredList));
            notifyDataSetChanged();
        }

        private void configCellUI(CheckInRanking checkInRanking, View view) {
            int iIndexOf;
            int i10;
            int i11;
            List<CheckInRanking> list = getList();
            if (view != null && checkInRanking != null && list != null && list.size() != 0) {
                List<CheckInRanking> list2 = this.oList;
                if (list2 == null) {
                    iIndexOf = -1;
                } else {
                    iIndexOf = list2.indexOf(checkInRanking);
                }
                if (iIndexOf == -1 || iIndexOf > 2) {
                    iIndexOf = 0;
                }
                Drawable cellDrawable = getCellDrawable(iIndexOf);
                if (iIndexOf == 0) {
                    i10 = R.drawable.start_count_3;
                    i11 = R.dimen.leader_board_check_in_padding_3;
                } else if (iIndexOf == 1) {
                    i10 = R.drawable.start_count_2;
                    i11 = R.dimen.leader_board_check_in_padding_2;
                } else {
                    i10 = R.drawable.start_count_1;
                    i11 = R.dimen.leader_board_check_in_padding_1;
                }
                float dimension = getContext().getResources().getDimension(i11);
                View viewFindViewById = view.findViewById(R.id.user_grid_container);
                if (viewFindViewById != null) {
                    viewFindViewById.setPadding(viewFindViewById.getPaddingLeft(), (int) dimension, viewFindViewById.getPaddingRight(), viewFindViewById.getPaddingBottom());
                    viewFindViewById.setBackgroundDrawable(cellDrawable);
                }
                Drawable drawable = CheckInRankingListFragment.this.getResources().getDrawable(i10);
                ImageView imageView = (ImageView) view.findViewById(R.id.star_layout);
                if (imageView != null) {
                    imageView.setImageDrawable(drawable);
                }
                View viewFindViewById2 = view.findViewById(R.id.title);
                if (TextUtils.isEmpty(checkInRanking.title)) {
                    viewFindViewById2.setVisibility(8);
                } else {
                    viewFindViewById2.setVisibility(0);
                }
                if (viewFindViewById2 instanceof TextView) {
                    ((TextView) viewFindViewById2).setText(checkInRanking.title);
                }
            }
        }

        @Override // android.widget.Adapter
        public View getView(int i10, View view, ViewGroup viewGroup) {
            CheckInRanking item = getItem(i10);
            if (item != null) {
                return createGridCell(view, viewGroup, item);
            }
            return null;
        }

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            List<CheckInRanking> list = getList();
            if (list == null || list.size() == 0) {
                return true;
            }
            int i10 = 0;
            for (int i11 = 0; i11 < list.size(); i11++) {
                i10 += !CheckInRankingListFragment.this.isCellEmpty(list.get(i11)) ? 1 : 0;
            }
            if (i10 == 0) {
                return true;
            }
            return false;
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
        }
    }

    class UserDataAdapter extends RankingUserListAdapter {
        @Override // com.narvii.user.list.UserListAdapter, com.narvii.list.NVAdapter, com.narvii.logging.Area
        public String getAreaName() {
            return "TopUserList";
        }

        @Override // com.narvii.leaderboard.RankingUserListAdapter
        protected int rankingType() {
            return 4;
        }

        public UserDataAdapter() {
            super(CheckInRankingListFragment.this);
            this.paginationType = -2;
        }

        @Override // com.narvii.leaderboard.RankingUserListAdapter, com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            ApiRequest.Builder builderScopeCommunityId = ApiRequest.builder().path("/community/leaderboard").scopeCommunityId(((ConfigService) this.context.getService("config")).getCommunityId());
            builderScopeCommunityId.param("rankingType", 4);
            builderScopeCommunityId.tag(Boolean.valueOf(!z6));
            return builderScopeCommunityId.build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        public void loadNextPage(boolean z6) {
            if (CheckInRankingListFragment.this.readyToLoad) {
                super.loadNextPage(z6);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, UserListResponse userListResponse, int i10) {
            super.onPageResponse(apiRequest, userListResponse, i10);
            CheckInRankingListFragment.this.adapter.setData(userListResponse.groupedUserProfileList);
        }
    }

    private void initParameter() {
        this.countColumn = 5;
        Point screenSize = Utils.getScreenSize(getActivity());
        float dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.item_padding_left_right);
        float dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.leader_board_check_in_grid_padding_Left_right);
        this.interPadding = dimensionPixelSize2;
        float f = screenSize.x - ((dimensionPixelSize + dimensionPixelSize2) * 2.0f);
        this.cellWidth = f / 6.0f;
        float fDpToPx = Utils.dpToPx(getContext(), 80.0f);
        float fDpToPx2 = Utils.dpToPx(getContext(), 40.0f);
        float f6 = this.cellWidth;
        if (f6 > fDpToPx) {
            this.countColumn = (int) (((f - (6.0f * fDpToPx)) / (fDpToPx * 1.2f)) + 5.0f);
            this.cellWidth = fDpToPx;
        } else if (f6 < fDpToPx2) {
            this.countColumn = (int) (f / (fDpToPx2 * 1.2f));
            this.cellWidth = fDpToPx2;
        }
        if (this.countColumn == 0) {
            this.countColumn = 5;
            this.cellWidth = f / (5 * 1.2f);
        }
        this.interPadding = ((f - ((this.cellWidth * 1.2f) * this.countColumn)) / 2.0f) + dimensionPixelSize2;
    }

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    @Nullable
    public String getPageName() {
        return "check_in_streak";
    }

    public void hideBottomBar() {
        CheckInBottomBarLayout checkInBottomBarLayout = this.checkInBottomBarLayout;
        if (checkInBottomBarLayout != null) {
            checkInBottomBarLayout.setVisibility(8);
        }
    }

    protected boolean isCellEmpty(CheckInRanking checkInRanking) {
        List<User> list;
        return checkInRanking == null || (list = checkInRanking.userProfileList) == null || list.size() <= 2;
    }

    @Override // com.narvii.leaderboard.ShareHeaderFragment
    protected NVAdapter mainAdapter(Bundle bundle) {
        MergeAdapter mergeAdapter = new MergeAdapter(this);
        this.userDataAdapter = new UserDataAdapter();
        mergeAdapter.addAdapter(new RankingUserListLayoutAdapter(this, this.userDataAdapter), true);
        mergeAdapter.addAdapter(new MarginAdapter(this, (int) Utils.dpToPx(getContext(), 25.0f)));
        CheckInListAdapter checkInListAdapter = new CheckInListAdapter();
        this.adapter = checkInListAdapter;
        mergeAdapter.addAdapter(checkInListAdapter);
        if (!isEmbedFragment()) {
            mergeAdapter.addAdapter(new MarginAdapter(this, (int) Utils.dpToPx(getContext(), 65.0f)));
        }
        return mergeAdapter;
    }

    @Override // com.narvii.community.AffiliationsService.AffiliationChangeListener
    public void onAffiliationChanged() {
        CheckInBottomBarLayout checkInBottomBarLayout = this.checkInBottomBarLayout;
        if (checkInBottomBarLayout != null) {
            checkInBottomBarLayout.setVisibility(isVisitorNotJoined() ? 8 : 0);
        }
    }

    @Override // com.narvii.leaderboard.ShareHeaderFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        initParameter();
        this.leaderBoardHelper = new LeaderBoardHelper(this);
        this.rankingService = (RankingService) getService(Module.MODULE_RANKING);
        this.affiliationsService = (AffiliationsService) getService("affiliations");
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onResume() {
        int i10;
        super.onResume();
        CheckInBottomBarLayout checkInBottomBarLayout = this.checkInBottomBarLayout;
        if (checkInBottomBarLayout != null) {
            if (isVisitorNotJoined()) {
                i10 = 8;
            } else {
                i10 = 0;
            }
            checkInBottomBarLayout.setVisibility(i10);
        }
    }

    @Override // com.narvii.leaderboard.ShareHeaderFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        CheckInBottomBarLayout checkInBottomBarLayout;
        super.onViewCreated(view, bundle);
        if (!isEmbedFragment() && (view instanceof FrameLayout)) {
            this.checkInBottomBarLayout = new CheckInBottomBarLayout(getContext());
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
            layoutParams.gravity = 80;
            this.checkInBottomBarLayout.setPadding(0, 0, 0, OptinAdsUtil.getBannerLift(this, 16));
            this.checkInBottomBarLayout.setBackground(new ColorDrawable(ViewCompat.MEASURED_STATE_MASK));
            ((FrameLayout) view).addView(this.checkInBottomBarLayout, layoutParams);
        }
        if (isVisitorNotJoined() && (checkInBottomBarLayout = this.checkInBottomBarLayout) != null) {
            checkInBottomBarLayout.setVisibility(8);
            this.affiliationsService.addAffiliationChangeListener(this);
        }
    }

    @Override // com.narvii.leaderboard.ShareHeaderFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void setUserVisibleHint(boolean z6) {
        super.setUserVisibleHint(z6);
        if (z6) {
            this.readyToLoad = true;
            CheckInListAdapter checkInListAdapter = this.adapter;
            if (checkInListAdapter != null) {
                checkInListAdapter.setFragmentVisible(true);
                this.adapter.notifyDataSetChanged();
            }
        }
    }
}
