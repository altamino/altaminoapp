package androidx.databinding;

/* JADX INFO: loaded from: classes6.dex */
abstract class BaseObservableField extends BaseObservable {

    class DependencyCallback extends Observable.OnPropertyChangedCallback {
        DependencyCallback() {
        }

        @Override // androidx.databinding.Observable.OnPropertyChangedCallback
        public void e(Observable observable, int i10) {
            BaseObservableField.this.notifyChange();
        }
    }

    public BaseObservableField() {
    }

    public BaseObservableField(Observable... observableArr) {
        if (observableArr == null || observableArr.length == 0) {
            return;
        }
        DependencyCallback dependencyCallback = new DependencyCallback();
        for (Observable observable : observableArr) {
            observable.addOnPropertyChangedCallback(dependencyCallback);
        }
    }
}
