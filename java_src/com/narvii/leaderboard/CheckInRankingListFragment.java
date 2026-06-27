package com.narvii.leaderboard;

import android.content.res.Resources;
import android.graphics.LinearGradient;
import android.graphics.Point;
import android.graphics.Shader;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.PaintDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RectShape;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.GridLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.narvii.account.AccountService;
import com.narvii.adapter.MarginAdapter;
import com.narvii.amino.mastes.R;
import com.narvii.checkin.CheckInBottomBarLayout;
import com.narvii.community.AffiliationsService;
import com.narvii.config.ConfigService;
import com.narvii.list.MergeAdapter;
import com.narvii.list.NVAdapter;
import com.narvii.list.NVArrayAdapter;
import com.narvii.model.CheckInRanking;
import com.narvii.model.User;
import com.narvii.model.api.UserListResponse;
import com.narvii.modulization.Module;
import com.narvii.util.Callback;
import com.narvii.util.Utils;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.ranking.RankingService;
import com.narvii.widget.NicknameView;
import com.narvii.widget.UserAvatarLayout;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
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

    @Override // com.narvii.app.NVFragment, com.narvii.logging.Page
    public String getPageName() {
        return "CheckInStreak";
    }

    @Override // com.narvii.leaderboard.ShareHeaderFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        initParameter();
        this.leaderBoardHelper = new LeaderBoardHelper(this);
        this.rankingService = (RankingService) getService(Module.MODULE_RANKING);
        this.affiliationsService = (AffiliationsService) getService("affiliations");
    }

    @Override // com.narvii.leaderboard.ShareHeaderFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void setUserVisibleHint(boolean z) {
        super.setUserVisibleHint(z);
        if (z) {
            this.readyToLoad = true;
            CheckInListAdapter checkInListAdapter = this.adapter;
            if (checkInListAdapter != null) {
                checkInListAdapter.setFragmentVisible(true);
                this.adapter.notifyDataSetChanged();
            }
        }
    }

    @Override // com.narvii.leaderboard.ShareHeaderFragment, com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, android.support.v4.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        CheckInBottomBarLayout checkInBottomBarLayout;
        super.onViewCreated(view, bundle);
        if (!isVisitorNotJoined() || (checkInBottomBarLayout = this.checkInBottomBarLayout) == null) {
            return;
        }
        checkInBottomBarLayout.setVisibility(8);
        this.affiliationsService.addAffiliationChangeListener(this);
    }

    @Override // com.narvii.community.AffiliationsService.AffiliationChangeListener
    public void onAffiliationChanged() {
        CheckInBottomBarLayout checkInBottomBarLayout = this.checkInBottomBarLayout;
        if (checkInBottomBarLayout != null) {
            checkInBottomBarLayout.setVisibility(isVisitorNotJoined() ? 8 : 0);
        }
    }

    public void hideBottomBar() {
        CheckInBottomBarLayout checkInBottomBarLayout = this.checkInBottomBarLayout;
        if (checkInBottomBarLayout != null) {
            checkInBottomBarLayout.setVisibility(8);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onResume() {
        super.onResume();
        CheckInBottomBarLayout checkInBottomBarLayout = this.checkInBottomBarLayout;
        if (checkInBottomBarLayout != null) {
            checkInBottomBarLayout.setVisibility(isVisitorNotJoined() ? 8 : 0);
        }
    }

    private void initParameter() {
        this.countColumn = 5;
        Point screenSize = Utils.getScreenSize(getActivity());
        float dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.item_padding_left_right);
        float dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.leader_board_check_in_grid_padding_Left_right);
        this.interPadding = dimensionPixelSize2;
        float f = screenSize.x - ((dimensionPixelSize + this.interPadding) * 2.0f);
        this.cellWidth = f / 6.0f;
        float fDpToPx = Utils.dpToPx(getContext(), 80.0f);
        float fDpToPx2 = Utils.dpToPx(getContext(), 40.0f);
        float f2 = this.cellWidth;
        if (f2 > fDpToPx) {
            this.countColumn = (int) (((f - (6.0f * fDpToPx)) / (fDpToPx * 1.2f)) + 5.0f);
            this.cellWidth = fDpToPx;
        } else if (f2 < fDpToPx2) {
            this.countColumn = (int) (f / (fDpToPx2 * 1.2f));
            this.cellWidth = fDpToPx2;
        }
        if (this.countColumn == 0) {
            this.countColumn = 5;
            this.cellWidth = f / (this.countColumn * 1.2f);
        }
        this.interPadding = ((f - ((this.cellWidth * 1.2f) * this.countColumn)) / 2.0f) + dimensionPixelSize2;
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
        protected ApiRequest createRequest(boolean z) {
            ApiRequest.Builder builderScopeCommunityId = ApiRequest.builder().path("/community/leaderboard").scopeCommunityId(((ConfigService) this.context.getService("config")).getCommunityId());
            builderScopeCommunityId.param("rankingType", 4);
            builderScopeCommunityId.tag(Boolean.valueOf(!z));
            return builderScopeCommunityId.build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        public void loadNextPage(boolean z) {
            if (CheckInRankingListFragment.this.readyToLoad) {
                super.loadNextPage(z);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, UserListResponse userListResponse, int i) {
            super.onPageResponse(apiRequest, (ApiRequest) userListResponse, i);
            CheckInRankingListFragment.this.adapter.setData(userListResponse.groupedUserProfileList);
        }
    }

    class CheckInListAdapter extends NVArrayAdapter<CheckInRanking> {
        List<CheckInRanking> filteredList;
        List<CheckInRanking> oList;

        public void setFragmentVisible(boolean z) {
        }

        public CheckInListAdapter() {
            super(CheckInRankingListFragment.this, CheckInRanking.class);
        }

        @Override // com.narvii.list.NVAdapter
        public void onAttach() {
            super.onAttach();
        }

        @Override // com.narvii.list.NVAdapter
        public void refresh(int i, Callback<Integer> callback) {
            CheckInRankingListFragment.this.updateViews();
            refreshMonitorStart(i, callback);
            refreshMonitorEnd();
        }

        public void setData(List<CheckInRanking> list) {
            this.oList = list;
            this.filteredList = filterList(this.oList);
            super.setList(new ArrayList(this.filteredList));
            notifyDataSetChanged();
        }

        public List<CheckInRanking> filterList(List<CheckInRanking> list) {
            List<User> list2;
            if (list == null || list.size() == 0) {
                return new ArrayList();
            }
            AccountService accountService = (AccountService) getService("account");
            String strUid = accountService.getUserProfile() != null ? accountService.getUserProfile().uid() : null;
            ArrayList arrayList = new ArrayList();
            for (int i = 0; i < list.size(); i++) {
                CheckInRanking checkInRanking = list.get(i);
                if (!CheckInRankingListFragment.this.isCellEmpty(checkInRanking)) {
                    if (!TextUtils.isEmpty(strUid) && (list2 = checkInRanking.userProfileList) != null && list2.size() > 0) {
                        checkInRanking.userProfileList = reOrderUserList(list2, strUid);
                    }
                    arrayList.add(checkInRanking);
                }
            }
            return arrayList;
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

        @Override // android.widget.BaseAdapter, android.widget.Adapter
        public boolean isEmpty() {
            List<CheckInRanking> list = getList();
            if (list == null || list.size() == 0) {
                return true;
            }
            int i = 0;
            for (int i2 = 0; i2 < list.size(); i2++) {
                i += !CheckInRankingListFragment.this.isCellEmpty(list.get(i2)) ? 1 : 0;
            }
            return i == 0;
        }

        @Override // android.widget.Adapter
        public View getView(int i, View view, ViewGroup viewGroup) {
            CheckInRanking item = getItem(i);
            if (item != null) {
                return createGridCell(view, viewGroup, item);
            }
            return null;
        }

        private View createGridCell(View view, ViewGroup viewGroup, CheckInRanking checkInRanking) throws Resources.NotFoundException {
            List<User> list;
            AccountService accountService = (AccountService) getService("account");
            String strUid = accountService.getUserProfile() != null ? accountService.getUserProfile().uid() : null;
            boolean z = checkInRanking == null || (list = checkInRanking.userProfileList) == null || list.size() == 0;
            if (view == null) {
                view = createView(R.layout.item_leaderboard_checkin, viewGroup, view);
            }
            ((Button) view.findViewById(R.id.check_in_see_all)).setOnClickListener(this.subviewClickListener);
            configCellUI(checkInRanking, view);
            GridLayout gridLayout = (GridLayout) view.findViewById(R.id.user_grid_layout);
            if (z) {
                view.setVisibility(8);
                return view;
            }
            List<User> list2 = checkInRanking.userProfileList;
            int size = list2 != null ? list2.size() : 0;
            if (CheckInRankingListFragment.this.countColumn == 0) {
                CheckInRankingListFragment.this.countColumn = 5;
            }
            int i = size / CheckInRankingListFragment.this.countColumn;
            if (size % CheckInRankingListFragment.this.countColumn > CheckInRankingListFragment.this.countColumn / 2) {
                i++;
            }
            if (i > 4) {
                i = 4;
            }
            int childCount = gridLayout.getChildCount();
            int i2 = CheckInRankingListFragment.this.countColumn * i;
            if (childCount > i2) {
                for (int i3 = i2; i3 < childCount; i3++) {
                    gridLayout.removeViewAt(i2);
                }
            }
            gridLayout.setColumnCount(CheckInRankingListFragment.this.countColumn);
            try {
                gridLayout.setRowCount(i);
            } catch (Exception unused) {
            }
            gridLayout.setPadding((int) CheckInRankingListFragment.this.interPadding, gridLayout.getPaddingTop(), (int) CheckInRankingListFragment.this.interPadding, gridLayout.getPaddingBottom());
            if (CheckInRankingListFragment.this.countColumn * i <= size) {
                size = CheckInRankingListFragment.this.countColumn * i;
            }
            int i4 = 0;
            while (i4 < size) {
                User user = checkInRanking.userProfileList.get(i4);
                View childAt = gridLayout.getChildCount() > i4 ? gridLayout.getChildAt(i4) : null;
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
                        int i5 = (int) (CheckInRankingListFragment.this.cellWidth * 0.1f);
                        int i6 = i5 / 2;
                        ((ViewGroup.MarginLayoutParams) layoutParams).setMargins(i5, i6, i5, i6);
                    }
                }
                i4++;
            }
            return view;
        }

        /* JADX WARN: Removed duplicated region for block: B:15:0x0020  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x002c  */
        /* JADX WARN: Removed duplicated region for block: B:25:0x006b  */
        @Override // com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onItemClick(android.widget.ListAdapter r6, int r7, java.lang.Object r8, android.view.View r9, android.view.View r10) {
            /*
                r5 = this;
                if (r10 == 0) goto L9c
                boolean r0 = r8 instanceof com.narvii.model.CheckInRanking
                if (r0 == 0) goto L20
                r1 = r8
                com.narvii.model.CheckInRanking r1 = (com.narvii.model.CheckInRanking) r1
                int r1 = r1.minStreak
                r2 = 7
                if (r1 == r2) goto L1d
                r2 = 14
                if (r1 == r2) goto L1a
                r2 = 30
                if (r1 == r2) goto L17
                goto L20
            L17:
                java.lang.String r1 = "1MonthStreak"
                goto L22
            L1a:
                java.lang.String r1 = "2WeekStreak"
                goto L22
            L1d:
                java.lang.String r1 = "1WeekStreak"
                goto L22
            L20:
                java.lang.String r1 = "DaysStreak"
            L22:
                int r2 = r10.getId()
                r3 = 2131296797(0x7f09021d, float:1.821152E38)
                r4 = 1
                if (r2 != r3) goto L6b
                com.narvii.leaderboard.CheckInRankingListFragment r6 = com.narvii.leaderboard.CheckInRankingListFragment.this
                com.narvii.leaderboard.LeaderBoardHelper r7 = r6.leaderBoardHelper
                android.support.v4.app.FragmentActivity r6 = r6.getActivity()
                r7.saveDynamicThemeBg(r6)
                java.lang.Class<com.narvii.leaderboard.CheckinRegionFragment> r6 = com.narvii.leaderboard.CheckinRegionFragment.class
                android.content.Intent r6 = com.narvii.app.FragmentWrapperActivity.intent(r6)
                if (r0 == 0) goto L57
                com.narvii.model.CheckInRanking r8 = (com.narvii.model.CheckInRanking) r8
                int r7 = r8.minStreak
                java.lang.String r9 = "min_streak"
                r6.putExtra(r9, r7)
                int r7 = r8.maxStreak
                java.lang.String r9 = "max_streak"
                r6.putExtra(r9, r7)
                java.lang.String r7 = r8.title
                java.lang.String r8 = "title"
                r6.putExtra(r8, r7)
            L57:
                if (r6 != 0) goto L5a
                return r4
            L5a:
                com.narvii.logging.ActSemantic r7 = com.narvii.logging.ActSemantic.listViewEnter
                com.narvii.logging.LogEvent$Builder r7 = com.narvii.logging.LogEvent.clickBuilder(r5, r7)
                com.narvii.logging.LogEvent$Builder r7 = r7.area(r1)
                r7.send()
                r5.startActivity(r6)
                return r4
            L6b:
                java.lang.Object r0 = r10.getTag()
                boolean r0 = r0 instanceof com.narvii.model.User
                if (r0 == 0) goto L9c
                java.lang.Object r6 = r10.getTag()
                com.narvii.model.User r6 = (com.narvii.model.User) r6
                android.content.Intent r7 = com.narvii.user.profile.UserProfileFragment.intent(r5, r6)
                if (r7 != 0) goto L80
                return r4
            L80:
                java.lang.String r8 = "Source"
                java.lang.String r9 = "Leaderboard"
                r7.putExtra(r8, r9)
                com.narvii.logging.ActSemantic r8 = com.narvii.logging.ActSemantic.checkDetail
                com.narvii.logging.LogEvent$Builder r8 = com.narvii.logging.LogEvent.clickBuilder(r5, r8)
                com.narvii.logging.LogEvent$Builder r8 = r8.area(r1)
                com.narvii.logging.LogEvent$Builder r6 = r8.object(r6)
                r6.send()
                r5.startActivity(r7)
                return r4
            L9c:
                boolean r6 = super.onItemClick(r6, r7, r8, r9, r10)
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: com.narvii.leaderboard.CheckInRankingListFragment.CheckInListAdapter.onItemClick(android.widget.ListAdapter, int, java.lang.Object, android.view.View, android.view.View):boolean");
        }

        private void configCellUI(CheckInRanking checkInRanking, View view) throws Resources.NotFoundException {
            List<CheckInRanking> list = getList();
            if (view == null || checkInRanking == null || list == null || list.size() == 0) {
                return;
            }
            List<CheckInRanking> list2 = this.oList;
            int iIndexOf = list2 == null ? -1 : list2.indexOf(checkInRanking);
            if (iIndexOf == -1 || iIndexOf > 2) {
                iIndexOf = 0;
            }
            Drawable cellDrawable = getCellDrawable(iIndexOf);
            int i = R.drawable.start_count_1;
            int i2 = R.dimen.leader_board_check_in_padding_1;
            if (iIndexOf == 0) {
                i = R.drawable.start_count_3;
                i2 = R.dimen.leader_board_check_in_padding_3;
            } else if (iIndexOf == 1) {
                i = R.drawable.start_count_2;
                i2 = R.dimen.leader_board_check_in_padding_2;
            }
            float dimension = getContext().getResources().getDimension(i2);
            View viewFindViewById = view.findViewById(R.id.user_grid_container);
            if (viewFindViewById != null) {
                viewFindViewById.setPadding(viewFindViewById.getPaddingLeft(), (int) dimension, viewFindViewById.getPaddingRight(), viewFindViewById.getPaddingBottom());
                viewFindViewById.setBackgroundDrawable(cellDrawable);
            }
            Drawable drawable = CheckInRankingListFragment.this.getResources().getDrawable(i);
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

        private Drawable getCellDrawable(int i) {
            final int[] iArr = i == 1 ? new int[]{-7422481, -11359233, -7422481} : i == 2 ? new int[]{-3638292, -3647490, -1666817} : new int[]{-1192050, -1263295, -1389478};
            ShapeDrawable.ShaderFactory shaderFactory = new ShapeDrawable.ShaderFactory() { // from class: com.narvii.leaderboard.CheckInRankingListFragment.CheckInListAdapter.1
                @Override // android.graphics.drawable.ShapeDrawable.ShaderFactory
                public Shader resize(int i2, int i3) {
                    return new LinearGradient(0.0f, 0.0f, 0.0f, i3, iArr, new float[]{0.0f, 0.05f, 1.0f}, Shader.TileMode.CLAMP);
                }
            };
            PaintDrawable paintDrawable = new PaintDrawable();
            paintDrawable.setShape(new RectShape());
            paintDrawable.setCornerRadius(Utils.dpToPx(getContext(), 10.0f));
            paintDrawable.setShaderFactory(shaderFactory);
            return paintDrawable;
        }
    }

    protected boolean isCellEmpty(CheckInRanking checkInRanking) {
        List<User> list;
        return checkInRanking == null || (list = checkInRanking.userProfileList) == null || list.size() <= 2;
    }
}
