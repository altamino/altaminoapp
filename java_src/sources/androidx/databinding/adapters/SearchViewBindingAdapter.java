package androidx.databinding.adapters;

import android.annotation.TargetApi;
import android.widget.SearchView;
import androidx.annotation.RestrictTo;
import androidx.databinding.BindingMethods;

/* JADX INFO: loaded from: classes8.dex */
@BindingMethods
@RestrictTo
public class SearchViewBindingAdapter {

    /* JADX INFO: renamed from: androidx.databinding.adapters.SearchViewBindingAdapter$1, reason: invalid class name */
    /* JADX INFO: loaded from: classes.dex */
    class AnonymousClass1 implements SearchView.OnQueryTextListener {
        final /* synthetic */ OnQueryTextChange val$change;
        final /* synthetic */ OnQueryTextSubmit val$submit;

        @Override // android.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextChange(String str) {
            OnQueryTextChange onQueryTextChange = this.val$change;
            if (onQueryTextChange != null) {
                return onQueryTextChange.onQueryTextChange(str);
            }
            return false;
        }

        @Override // android.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextSubmit(String str) {
            OnQueryTextSubmit onQueryTextSubmit = this.val$submit;
            if (onQueryTextSubmit != null) {
                return onQueryTextSubmit.onQueryTextSubmit(str);
            }
            return false;
        }
    }

    /* JADX INFO: renamed from: androidx.databinding.adapters.SearchViewBindingAdapter$2, reason: invalid class name */
    /* JADX INFO: loaded from: classes.dex */
    class AnonymousClass2 implements SearchView.OnSuggestionListener {
        final /* synthetic */ OnSuggestionClick val$change;
        final /* synthetic */ OnSuggestionSelect val$submit;

        @Override // android.widget.SearchView.OnSuggestionListener
        public boolean onSuggestionClick(int i10) {
            OnSuggestionClick onSuggestionClick = this.val$change;
            if (onSuggestionClick != null) {
                return onSuggestionClick.onSuggestionClick(i10);
            }
            return false;
        }

        @Override // android.widget.SearchView.OnSuggestionListener
        public boolean onSuggestionSelect(int i10) {
            OnSuggestionSelect onSuggestionSelect = this.val$submit;
            if (onSuggestionSelect != null) {
                return onSuggestionSelect.onSuggestionSelect(i10);
            }
            return false;
        }
    }

    @TargetApi(11)
    public interface OnQueryTextChange {
        boolean onQueryTextChange(String str);
    }

    @TargetApi(11)
    public interface OnQueryTextSubmit {
        boolean onQueryTextSubmit(String str);
    }

    @TargetApi(11)
    public interface OnSuggestionClick {
        boolean onSuggestionClick(int i10);
    }

    @TargetApi(11)
    public interface OnSuggestionSelect {
        boolean onSuggestionSelect(int i10);
    }
}
