package com.narvii.poweruser.history;

import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;
import com.narvii.date.DateSection;
import com.narvii.lib.R;
import com.narvii.list.NVListFragment;
import com.narvii.util.Constants;
import com.narvii.util.DateUtils;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.NVListView;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class ModerationHistoryBaseFragment extends NVListFragment {
    public static final String PARAMS_DATE = "dateSection";
    public static final String PARAMS_OBJECT_ID = "objectId";
    public static final String PARAMS_OBJECT_TYPE = "objectType";
    public static final String PARAMS_OPERATOR_UID = "operatorId";
    public static final String PARAMS_TITLE = "title";
    private String curSectionText;
    protected ModerationHistoryBaseAdapter moderationHistoryAdapter;
    private String objectId;
    private int objectType;
    protected String operatorId;
    private View sectionHeaderOverlay;
    private String title;
    SimpleDateFormat dateFormatWithoutYear = new SimpleDateFormat("MMMM d", Locale.getDefault());
    SimpleDateFormat dateFormatWithYear = new SimpleDateFormat(Constants.BIRTHDAY_FORMAT, Locale.getDefault());
    SparseArray<String> dateSections = new SparseArray<>();

    protected class ModerationHistorySectionAdapter extends ModerationHistoryBaseAdapter {
        private List l;

        @Override // com.narvii.list.NVPagedAdapter
        public List<?> list() {
            return this.l;
        }

        public ModerationHistorySectionAdapter() {
            super(ModerationHistoryBaseFragment.this);
        }

        private String formatDate(Date date) {
            if (date == null) {
                return null;
            }
            if (DateUtils.isToday(date)) {
                return getContext().getResources().getString(R.string.today).toUpperCase(Locale.getDefault());
            }
            if (DateUtils.isYesterday(date)) {
                return getContext().getResources().getString(R.string.yesterday).toUpperCase(Locale.getDefault());
            }
            return DateUtils.isSameYear(date) ? ModerationHistoryBaseFragment.this.dateFormatWithoutYear.format(date) : ModerationHistoryBaseFragment.this.dateFormatWithYear.format(date);
        }

        @Override // com.narvii.poweruser.history.ModerationHistoryBaseAdapter, com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return obj instanceof DateSection ? getItemTypeCount() - 1 : super.getItemType(obj);
        }

        @Override // com.narvii.poweruser.history.ModerationHistoryBaseAdapter, com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (!(obj instanceof DateSection)) {
                return super.getItemView(obj, view, viewGroup);
            }
            TextView textView = (TextView) createView(R.layout.item_section_layout, viewGroup, view);
            DateSection dateSection = (DateSection) obj;
            textView.setText(dateSection.time);
            textView.setTag(R.id.list_time_section_name, dateSection.time);
            return textView;
        }

        @Override // com.narvii.poweruser.history.ModerationHistoryBaseAdapter
        protected String objectId() {
            return ModerationHistoryBaseFragment.this.objectId;
        }

        @Override // com.narvii.poweruser.history.ModerationHistoryBaseAdapter
        protected int objectType() {
            return ModerationHistoryBaseFragment.this.objectType;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public void onPageResponse(ApiRequest apiRequest, ModerationHistoryListResponse moderationHistoryListResponse, int i10) {
            super.onPageResponse(apiRequest, moderationHistoryListResponse, i10);
            if (ModerationHistoryBaseFragment.this.sectionHeaderOverlay == null || moderationHistoryListResponse == null || moderationHistoryListResponse.list() == null || moderationHistoryListResponse.list().size() <= 0) {
                return;
            }
            ModerationHistoryBaseFragment.this.sectionHeaderOverlay.setVisibility(0);
        }

        @Override // com.narvii.poweruser.history.ModerationHistoryBaseAdapter
        protected String operatorUid() {
            return ModerationHistoryBaseFragment.this.operatorId;
        }

        @Override // com.narvii.list.NVPagedAdapter
        public void resetList() {
            this.l = new ArrayList();
            super.resetList();
        }

        private void addDateSection() {
            List<? extends ModerationHistory> listRawList = rawList();
            Date date = null;
            if (listRawList == null) {
                this.l = null;
                return;
            }
            if (listRawList.isEmpty()) {
                this.l = new ArrayList();
                return;
            }
            this.l = new ArrayList();
            for (ModerationHistory moderationHistory : listRawList) {
                if (!DateUtils.isSameDay(date, moderationHistory.createdTime)) {
                    this.l.add(new DateSection(formatDate(moderationHistory.createdTime)));
                }
                date = moderationHistory.createdTime;
                this.l.add(moderationHistory);
            }
        }

        @Override // com.narvii.poweruser.history.ModerationHistoryBaseAdapter, com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return super.getItemTypeCount() + 1;
        }

        @Override // android.widget.BaseAdapter
        public void notifyDataSetChanged() {
            addDateSection();
            super.notifyDataSetChanged();
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            return super.onItemClick(listAdapter, i10, obj, view, view2);
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter
        public void onRestoreInstanceState(Bundle bundle) {
            super.onRestoreInstanceState(bundle);
            addDateSection();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateSectionOverLay(AbsListView absListView, int i10, int i11, int i12) {
        View childAt = absListView.getChildAt(0);
        if (childAt != null) {
            Object tag = childAt.getTag(R.id.list_time_section_name);
            if (tag != null) {
                String str = (String) tag;
                this.curSectionText = str;
                this.dateSections.put(i10, str);
                ((TextView) this.sectionHeaderOverlay).setText(this.curSectionText);
            } else {
                for (int size = this.dateSections.size() - 1; size >= 0; size--) {
                    if (this.dateSections.keyAt(size) < i10) {
                        SparseArray<String> sparseArray = this.dateSections;
                        this.curSectionText = sparseArray.get(sparseArray.keyAt(size));
                        break;
                    }
                }
            }
        }
        View childAt2 = absListView.getChildAt(1);
        if (childAt2 == null) {
            return;
        }
        if (childAt2.getTag(R.id.list_time_section_name) == null) {
            ((TextView) this.sectionHeaderOverlay).setText(this.curSectionText);
            this.sectionHeaderOverlay.setY(0.0f);
            return;
        }
        float top = childAt2.getTop();
        Resources resources = getResources();
        int i13 = R.dimen.section_header_height;
        int dimension = (int) (top - resources.getDimension(i13));
        if (dimension <= 0) {
            float f = dimension;
            if (f >= getResources().getDimension(i13) * (-1.0f)) {
                this.sectionHeaderOverlay.setY(f);
                return;
            }
        }
        this.sectionHeaderOverlay.setY(0.0f);
        ((TextView) this.sectionHeaderOverlay).setText(this.curSectionText);
    }

    @Override // com.narvii.list.NVListFragment
    public boolean isSwipeRefresh() {
        return true;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        ModerationHistorySectionAdapter moderationHistorySectionAdapter = new ModerationHistorySectionAdapter();
        this.moderationHistoryAdapter = moderationHistorySectionAdapter;
        return moderationHistorySectionAdapter;
    }

    @Override // com.narvii.list.NVListFragment, androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(R.layout.list_layout_with_section, viewGroup, false);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle == null) {
            this.objectId = getStringParam(PARAMS_OBJECT_ID);
            this.objectType = getIntParam(PARAMS_OBJECT_TYPE);
            this.operatorId = getStringParam(PARAMS_OPERATOR_UID);
            this.title = getStringParam("title");
        } else {
            this.objectId = bundle.getString(PARAMS_OBJECT_ID);
            this.objectType = bundle.getInt(PARAMS_OBJECT_TYPE);
            this.operatorId = bundle.getString(PARAMS_OPERATOR_UID);
            this.title = bundle.getString("title");
            this.curSectionText = bundle.getString(PARAMS_DATE);
        }
        setHasOptionsMenu(true);
        if (TextUtils.isEmpty(this.title)) {
            setTitle(getString(R.string.moderation_history));
        } else {
            setTitle(this.title);
        }
    }

    @Override // com.narvii.list.NVListFragment
    protected void onListViewCreated(ListView listView, Bundle bundle) {
        super.onListViewCreated(listView, bundle);
        listView.setOverScrollMode(2);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putString(PARAMS_OBJECT_ID, this.objectId);
        bundle.putInt(PARAMS_OBJECT_TYPE, this.objectType);
        bundle.putString(PARAMS_OPERATOR_UID, this.operatorId);
        bundle.putString("title", this.title);
        bundle.putString(PARAMS_DATE, this.curSectionText);
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, com.narvii.app.theme.NVThemeFragment, androidx.fragment.app.Fragment
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.sectionHeaderOverlay = view.findViewById(R.id.section_header_overlay);
        ((NVListView) getListView()).addOnScrollListener(new AbsListView.OnScrollListener() { // from class: com.narvii.poweruser.history.ModerationHistoryBaseFragment.1
            @Override // android.widget.AbsListView.OnScrollListener
            public void onScrollStateChanged(AbsListView absListView, int i10) {
            }

            @Override // android.widget.AbsListView.OnScrollListener
            public void onScroll(AbsListView absListView, int i10, int i11, int i12) {
                ModerationHistoryBaseFragment.this.updateSectionOverLay(absListView, i10, i11, i12);
            }
        });
    }

    @Override // com.narvii.list.NVListFragment
    protected void updateViews() {
        int i10;
        super.updateViews();
        ListAdapter listAdapter = getListAdapter();
        View view = this.sectionHeaderOverlay;
        if (view != null) {
            if (listAdapter.isEmpty()) {
                i10 = 4;
            } else {
                i10 = 0;
            }
            view.setVisibility(i10);
        }
    }
}
