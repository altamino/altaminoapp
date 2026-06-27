package com.narvii.flag;

import android.content.Intent;
import android.os.Bundle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.flag.model.FlagLog;
import com.narvii.flag.model.FlagLogListResponse;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.model.User;
import com.narvii.user.profile.UserProfileFragment;
import com.narvii.util.DateTimeFormatter;
import com.narvii.util.http.ApiRequest;
import com.narvii.util.text.TagSpan;
import com.narvii.widget.NicknameView;
import com.narvii.widget.ThumbImageView;

/* loaded from: classes2.dex */
public class FlagLogListFragment extends NVListFragment {
    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
    }

    @Override // com.narvii.list.NVListFragment, android.support.v4.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View viewInflate = layoutInflater.inflate(R.layout.flaglog_list_layout, viewGroup, false);
        viewInflate.findViewById(R.id.reposrts_close).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.flag.FlagLogListFragment.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                FlagLogListFragment.this.finish();
            }
        });
        return viewInflate;
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new FlagDetailListAdapter();
    }

    class FlagDetailListAdapter extends NVPagedAdapter<FlagLog, FlagLogListResponse> {
        DateTimeFormatter datetime;

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        @Override // com.narvii.list.NVPagedAdapter, android.widget.BaseAdapter, android.widget.ListAdapter
        public boolean isEnabled(int i) {
            return false;
        }

        public FlagDetailListAdapter() {
            super(FlagLogListFragment.this);
            this.datetime = DateTimeFormatter.getInstance(getContext());
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<FlagLog> dataType() {
            return FlagLog.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends FlagLogListResponse> responseType() {
            return FlagLogListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return new ApiRequest.Builder().path("/flag/target-object/" + FlagLogListFragment.this.getStringParam("flag_id") + "/flag-logs").build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (!(obj instanceof FlagLog)) {
                return null;
            }
            View viewCreateView = createView(R.layout.flag_detail_item, viewGroup, view);
            FlagLog flagLog = (FlagLog) obj;
            if (flagLog.reporter != null) {
                ThumbImageView thumbImageView = (ThumbImageView) viewCreateView.findViewById(R.id.avatar);
                thumbImageView.setImageUrl(flagLog.reporter.icon());
                NicknameView nicknameView = (NicknameView) viewCreateView.findViewById(R.id.nickname);
                nicknameView.setUser(flagLog.reporter);
                thumbImageView.setOnClickListener(this.subviewClickListener);
                nicknameView.setOnClickListener(this.subviewClickListener);
            }
            SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(new FlagTag(false, flagLog.flagType).getFlagTypeName(getContext()));
            spannableStringBuilder.append((CharSequence) " ");
            spannableStringBuilder.setSpan(new TagSpan(-13619152, new FlagTag(false, flagLog.flagType).getFlagTypeName(getContext())), 0, spannableStringBuilder.length() - 1, 33);
            ((TextView) viewCreateView.findViewById(R.id.flag_type)).setText(spannableStringBuilder);
            ((TextView) viewCreateView.findViewById(R.id.flag_time)).setText(this.datetime.format(DateTimeFormatter.parseISO8601(flagLog.createdTime)));
            if (TextUtils.isEmpty(flagLog.message)) {
                ((TextView) viewCreateView.findViewById(R.id.flag_reason)).setVisibility(8);
            } else {
                ((TextView) viewCreateView.findViewById(R.id.flag_reason)).setVisibility(0);
                ((TextView) viewCreateView.findViewById(R.id.flag_reason)).setText("\"" + flagLog.message + "\"");
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            Intent intent;
            if (view2 != null && (view2.getId() == R.id.avatar || view2.getId() == R.id.nickname)) {
                User user = ((FlagLog) obj).reporter;
                if (user == null || (intent = UserProfileFragment.intent(this, user)) == null) {
                    return true;
                }
                startActivity(intent);
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }
    }
}
