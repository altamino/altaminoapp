package com.narvii.incubator;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.narvii.amino.master.R;
import com.narvii.app.NVContext;
import com.narvii.app.NVDialog;
import com.narvii.language.LanguageManager;
import com.narvii.language.LanguageSpec;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes.dex */
public class LanguageChooseDialog extends NVDialog {
    private List<String> codes;
    NVContext context;
    private String[] defaultCodes;
    ItemClickListener itemClickListener;
    private String languagePicked;
    List<LanguageSpec> languageSpecs;

    class FootViewHolder extends RecyclerView.ViewHolder {
        public FootViewHolder(View view) {
            super(view);
        }
    }

    public interface ItemClickListener {
        void onItemClick(LanguageSpec languageSpec);
    }

    class LanguageViewHolder extends RecyclerView.ViewHolder {
        ImageView imgPicked;
        TextView tvLanguage;
        TextView tvLocalLanguage;

        public LanguageViewHolder(View view) {
            super(view);
            this.tvLanguage = (TextView) view.findViewById(R.id.language);
            this.tvLocalLanguage = (TextView) view.findViewById(R.id.local_language);
            this.imgPicked = (ImageView) view.findViewById(R.id.language_picked);
        }
    }

    class MyRecycleAdapter extends RecyclerView.Adapter<RecyclerView.ViewHolder> {
        private static final int TYPE_FOOTER_ITEM = 1;
        private static final int TYPE_NORMAL_ITEM = 0;
        private List<LanguageSpec> languages;

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public RecyclerView.ViewHolder onCreateViewHolder(ViewGroup viewGroup, int i10) {
            if (i10 == 0) {
                return LanguageChooseDialog.this.new LanguageViewHolder(LayoutInflater.from(LanguageChooseDialog.this.getContext()).inflate(R.layout.language_choose_item_layout, viewGroup, false));
            }
            if (i10 != 1) {
                return null;
            }
            return LanguageChooseDialog.this.new FootViewHolder(LayoutInflater.from(LanguageChooseDialog.this.getContext()).inflate(R.layout.explorer_language_footer, viewGroup, false));
        }

        public MyRecycleAdapter(List<LanguageSpec> list) {
            this.languages = list;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemCount() {
            List<LanguageSpec> list = this.languages;
            if (list != null) {
                return list.size() + 1;
            }
            return 0;
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public void onBindViewHolder(final RecyclerView.ViewHolder viewHolder, int i10) {
            if (!(viewHolder instanceof LanguageViewHolder)) {
                boolean z6 = viewHolder instanceof FootViewHolder;
                return;
            }
            LanguageViewHolder languageViewHolder = (LanguageViewHolder) viewHolder;
            LanguageSpec languageSpec = this.languages.get(i10);
            TextView textView = languageViewHolder.tvLocalLanguage;
            if (textView != null) {
                textView.setText(languageSpec.localizedName);
            }
            TextView textView2 = languageViewHolder.tvLanguage;
            if (textView2 != null) {
                textView2.setText(languageSpec.name);
            }
            viewHolder.itemView.setOnClickListener(new View.OnClickListener() { // from class: com.narvii.incubator.LanguageChooseDialog.MyRecycleAdapter.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    LanguageSpec languageSpec2 = (LanguageSpec) MyRecycleAdapter.this.languages.get(viewHolder.getAdapterPosition());
                    ItemClickListener itemClickListener = LanguageChooseDialog.this.itemClickListener;
                    if (itemClickListener != null) {
                        itemClickListener.onItemClick(languageSpec2);
                    }
                }
            });
            ImageView imageView = languageViewHolder.imgPicked;
            if (imageView != null) {
                imageView.setVisibility(languageSpec.code.equals(LanguageChooseDialog.this.languagePicked) ? 0 : 4);
            }
        }

        @Override // androidx.recyclerview.widget.RecyclerView.Adapter
        public int getItemViewType(int i10) {
            if (i10 == getItemCount() - 1) {
                return 1;
            }
            return 0;
        }
    }

    public void setOnItemClickListener(ItemClickListener itemClickListener) {
        this.itemClickListener = itemClickListener;
    }

    private List<LanguageSpec> filterLanguageSpec(List<LanguageSpec> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (LanguageSpec languageSpec : list) {
            String str = languageSpec.code;
            Locale locale = Locale.US;
            if (str.toLowerCase(locale).equals(this.languagePicked.toLowerCase(locale))) {
                arrayList.add(0, languageSpec);
            } else {
                arrayList.add(languageSpec);
            }
        }
        return arrayList;
    }

    private void initLanguage() {
        LanguageManager languageManager = (LanguageManager) this.context.getService("language");
        this.languageSpecs = new ArrayList();
        for (String str : this.codes) {
            this.languageSpecs.add(new LanguageSpec(languageManager.getDisplayText(str), languageManager.getLocalDisplayText(str), str));
        }
    }

    public LanguageChooseDialog(NVContext nVContext, List<String> list, String str) {
        super(nVContext.getContext(), R.style.CustomDialog);
        this.defaultCodes = new String[]{"en", "es"};
        this.languagePicked = str;
        this.codes = list;
        if (list == null || list.size() == 0) {
            this.codes = new ArrayList();
            int i10 = 0;
            while (true) {
                String[] strArr = this.defaultCodes;
                if (i10 >= strArr.length) {
                    break;
                }
                this.codes.add(strArr[i10]);
                i10++;
            }
        }
        getWindow().getAttributes().windowAnimations = R.style.DialogAnimationSlow;
        this.context = nVContext;
        setContentView(R.layout.dialog_language_choose_layout);
        initLanguage();
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.language_list);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 1, false));
        recyclerView.setAdapter(new MyRecycleAdapter(filterLanguageSpec(this.languageSpecs)));
        ((Button) findViewById(R.id.language_pick_cancel)).setOnClickListener(new View.OnClickListener() { // from class: com.narvii.incubator.LanguageChooseDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (LanguageChooseDialog.this.isShowing()) {
                    LanguageChooseDialog.this.dismiss();
                }
            }
        });
    }
}
