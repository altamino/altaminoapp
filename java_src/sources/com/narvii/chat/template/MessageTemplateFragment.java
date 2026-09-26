package com.narvii.chat.template;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import androidx.core.internal.view.SupportMenu;
import com.narvii.amino.master.R;
import com.narvii.flag.resolve.FlagModeHelper;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.FontAwesomeView;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes9.dex */
public class MessageTemplateFragment extends NVListFragment {
    private static final String NEED_STRIKE = "needStrike";
    private boolean needStrike;

    class TemplateAdapter extends NVPagedAdapter<MessageTemplate, MessageTemplateListResponse> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<MessageTemplate> dataType() {
            return MessageTemplate.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends MessageTemplateListResponse> responseType() {
            return MessageTemplateListResponse.class;
        }

        public TemplateAdapter() {
            super(MessageTemplateFragment.this);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z6) {
            return new ApiRequest.Builder().path("/admin/message-template").build();
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<MessageTemplate> filterResponseList(List<MessageTemplate> list, int i10) {
            ArrayList<MessageTemplate> arrayList = new ArrayList(list);
            ArrayList arrayList2 = new ArrayList();
            if (MessageTemplateFragment.this.needStrike) {
                return list;
            }
            for (MessageTemplate messageTemplate : arrayList) {
                if (messageTemplate.messageType != 1) {
                    arrayList2.add(messageTemplate);
                }
            }
            return arrayList2;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected View getItemView(Object obj, View view, ViewGroup viewGroup) {
            if (!(obj instanceof MessageTemplate)) {
                return null;
            }
            MessageTemplate messageTemplate = (MessageTemplate) obj;
            View viewCreateView = createView(R.layout.message_template_item, viewGroup, view);
            ((TextView) viewCreateView.findViewById(R.id.message_content)).setText(messageTemplate.content);
            ((TextView) viewCreateView.findViewById(R.id.message_title)).setText(messageTemplate.title);
            if (messageTemplate.messageType == 1) {
                ((FontAwesomeView) viewCreateView.findViewById(R.id.template_type_icon)).setTextColor(SupportMenu.CATEGORY_MASK);
                ((FontAwesomeView) viewCreateView.findViewById(R.id.template_type_icon)).setText(R.string.ion_flag);
                ((TextView) viewCreateView.findViewById(R.id.template_type)).setText(MessageTemplateFragment.this.getTemplateType(messageTemplate.messageType));
            } else {
                ((FontAwesomeView) viewCreateView.findViewById(R.id.template_type_icon)).setTextColor(-7829368);
                ((FontAwesomeView) viewCreateView.findViewById(R.id.template_type_icon)).setText(MessageTemplateFragment.this.getString(R.string.ion_ios_paper_outline));
                ((TextView) viewCreateView.findViewById(R.id.template_type)).setText(MessageTemplateFragment.this.getTemplateType(messageTemplate.messageType));
            }
            return viewCreateView;
        }

        @Override // com.narvii.list.NVPagedAdapter, com.narvii.list.NVAdapter, com.narvii.list.OnItemClickListener
        public boolean onItemClick(ListAdapter listAdapter, int i10, Object obj, View view, View view2) {
            if (!(obj instanceof MessageTemplate)) {
                return super.onItemClick(listAdapter, i10, obj, view, view2);
            }
            Intent intent = new Intent();
            MessageTemplate messageTemplate = (MessageTemplate) obj;
            intent.putExtra("template_type", messageTemplate.messageType);
            intent.putExtra(FlagModeHelper.FLAG_RESOLVE_BACK, messageTemplate.content);
            MessageTemplateFragment.this.setResult(-1, intent);
            MessageTemplateFragment.this.finish();
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getTemplateType(int i10) {
        if (i10 == 0) {
            return getString(R.string.chat_message);
        }
        if (i10 != 1) {
            return null;
        }
        return getString(R.string.strike);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new TemplateAdapter();
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(getString(R.string.template));
        if (bundle != null) {
            this.needStrike = bundle.getBoolean(NEED_STRIKE, this.needStrike);
        } else {
            this.needStrike = getBooleanParam(NEED_STRIKE);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(NEED_STRIKE, this.needStrike);
    }
}
