package com.narvii.chat.template;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.internal.view.SupportMenu;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.narvii.amino.mastes.R;
import com.narvii.flag.resolve.FlagModeHelper;
import com.narvii.list.NVListFragment;
import com.narvii.list.NVPagedAdapter;
import com.narvii.util.http.ApiRequest;
import com.narvii.widget.FontAwesomeView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public class MessageTemplateFragment extends NVListFragment {
    private static final String NEED_STRIKE = "needStrike";
    private boolean needStrike;

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setTitle(getString(R.string.template));
        if (bundle != null) {
            this.needStrike = bundle.getBoolean(NEED_STRIKE, this.needStrike);
        } else {
            this.needStrike = getBooleanParam(NEED_STRIKE);
        }
    }

    @Override // com.narvii.list.NVListFragment, com.narvii.app.NVFragment, android.support.v4.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(NEED_STRIKE, this.needStrike);
    }

    @Override // com.narvii.list.NVListFragment
    protected ListAdapter createAdapter(Bundle bundle) {
        return new TemplateAdapter();
    }

    class TemplateAdapter extends NVPagedAdapter<MessageTemplate, MessageTemplateListResponse> {
        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemType(Object obj) {
            return 0;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected int getItemTypeCount() {
            return 1;
        }

        public TemplateAdapter() {
            super(MessageTemplateFragment.this);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<MessageTemplate> dataType() {
            return MessageTemplate.class;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.narvii.list.NVPagedAdapter
        public Class<? extends MessageTemplateListResponse> responseType() {
            return MessageTemplateListResponse.class;
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected ApiRequest createRequest(boolean z) {
            return new ApiRequest.Builder().path("/admin/message-template").build();
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
        public boolean onItemClick(ListAdapter listAdapter, int i, Object obj, View view, View view2) {
            if (obj instanceof MessageTemplate) {
                Intent intent = new Intent();
                MessageTemplate messageTemplate = (MessageTemplate) obj;
                intent.putExtra("template_type", messageTemplate.messageType);
                intent.putExtra(FlagModeHelper.FLAG_RESOLVE_BACK, messageTemplate.content);
                MessageTemplateFragment.this.setResult(-1, intent);
                MessageTemplateFragment.this.finish();
                return true;
            }
            return super.onItemClick(listAdapter, i, obj, view, view2);
        }

        @Override // com.narvii.list.NVPagedAdapter
        protected List<MessageTemplate> filterResponseList(List<MessageTemplate> list, int i) {
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
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getTemplateType(int i) {
        if (i == 0) {
            return getString(R.string.chat_message);
        }
        if (i != 1) {
            return null;
        }
        return getString(R.string.strike);
    }
}
