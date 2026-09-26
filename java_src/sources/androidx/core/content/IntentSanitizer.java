package androidx.core.content;

import android.content.ClipData;
import android.content.ComponentName;
import android.content.Intent;
import android.net.Uri;
import android.os.Build;
import androidx.annotation.DoNotInline;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.core.util.Consumer;
import androidx.core.util.Predicate;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class IntentSanitizer {
    private static final String TAG = "IntentSanitizer";
    private boolean mAllowAnyComponent;
    private boolean mAllowClipDataText;
    private boolean mAllowIdentifier;
    private boolean mAllowSelector;
    private boolean mAllowSourceBounds;
    private Predicate<String> mAllowedActions;
    private Predicate<String> mAllowedCategories;
    private Predicate<ClipData> mAllowedClipData;
    private Predicate<Uri> mAllowedClipDataUri;
    private Predicate<ComponentName> mAllowedComponents;
    private Predicate<Uri> mAllowedData;
    private Map<String, Predicate<Object>> mAllowedExtras;
    private int mAllowedFlags;
    private Predicate<String> mAllowedPackages;
    private Predicate<String> mAllowedTypes;

    @RequiresApi
    private static class Api16Impl {

        @RequiresApi
        private static class Api31Impl {
            private Api31Impl() {
            }

            @DoNotInline
            static void a(int i10, ClipData.Item item, Consumer<String> consumer) {
                if (item.getHtmlText() != null || item.getIntent() != null || item.getTextLinks() != null) {
                    consumer.accept("ClipData item at position " + i10 + " contains htmlText, textLinks or intent: " + item);
                }
            }
        }

        private Api16Impl() {
        }

        private static void a(int i10, ClipData.Item item, Consumer<String> consumer) {
            if (item.getHtmlText() != null || item.getIntent() != null) {
                consumer.accept("ClipData item at position " + i10 + " contains htmlText, textLinks or intent: " + item);
            }
        }

        /* JADX WARN: Code duplicated, block: B:37:0x00bc A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:38:0x00be  */
        /* JADX WARN: Code duplicated, block: B:39:0x00cd  */
        @DoNotInline
        static void b(@NonNull Intent intent, Intent intent2, Predicate<ClipData> predicate, boolean z6, Predicate<Uri> predicate2, Consumer<String> consumer) {
            CharSequence text;
            Uri uri;
            ClipData clipData = intent.getClipData();
            if (clipData == null) {
                return;
            }
            if (predicate != null && predicate.test(clipData)) {
                intent2.setClipData(clipData);
                return;
            }
            ClipData clipData2 = null;
            for (int i10 = 0; i10 < clipData.getItemCount(); i10++) {
                ClipData.Item itemAt = clipData.getItemAt(i10);
                if (Build.VERSION.SDK_INT >= 31) {
                    Api31Impl.a(i10, itemAt, consumer);
                } else {
                    a(i10, itemAt, consumer);
                }
                if (z6) {
                    text = itemAt.getText();
                } else {
                    if (itemAt.getText() != null) {
                        consumer.accept("Item text cannot contain value. Item position: " + i10 + ". Text: " + ((Object) itemAt.getText()));
                    }
                    text = null;
                }
                if (predicate2 == null) {
                    if (itemAt.getUri() != null) {
                        consumer.accept("Item URI is not allowed. Item position: " + i10 + ". URI: " + itemAt.getUri());
                    }
                } else {
                    if (itemAt.getUri() != null && !predicate2.test(itemAt.getUri())) {
                        consumer.accept("Item URI is not allowed. Item position: " + i10 + ". URI: " + itemAt.getUri());
                    } else {
                        uri = itemAt.getUri();
                    }
                    if (text == null || uri != null) {
                        if (clipData2 == null) {
                            clipData2 = new ClipData(clipData.getDescription(), new ClipData.Item(text, null, uri));
                        } else {
                            clipData2.addItem(new ClipData.Item(text, null, uri));
                        }
                    }
                }
                uri = null;
                if (text == null) {
                    if (clipData2 == null) {
                        clipData2 = new ClipData(clipData.getDescription(), new ClipData.Item(text, null, uri));
                    } else {
                        clipData2.addItem(new ClipData.Item(text, null, uri));
                    }
                } else if (clipData2 == null) {
                    clipData2 = new ClipData(clipData.getDescription(), new ClipData.Item(text, null, uri));
                } else {
                    clipData2.addItem(new ClipData.Item(text, null, uri));
                }
            }
            if (clipData2 != null) {
                intent2.setClipData(clipData2);
            }
        }
    }

    public static final class Builder {
        private static final int HISTORY_STACK_FLAGS = 2112614400;
        private static final int RECEIVER_FLAGS = 2015363072;
        private boolean mAllowAnyComponent;
        private boolean mAllowIdentifier;
        private boolean mAllowSelector;
        private boolean mAllowSomeComponents;
        private boolean mAllowSourceBounds;
        private int mAllowedFlags;
        private Predicate<String> mAllowedActions = new Predicate() { // from class: androidx.core.content.b
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                return IntentSanitizer.Builder.i((String) obj);
            }
        };
        private Predicate<Uri> mAllowedData = new Predicate() { // from class: androidx.core.content.c
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                return IntentSanitizer.Builder.j((Uri) obj);
            }
        };
        private Predicate<String> mAllowedTypes = new Predicate() { // from class: androidx.core.content.d
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                return IntentSanitizer.Builder.k((String) obj);
            }
        };
        private Predicate<String> mAllowedCategories = new Predicate() { // from class: androidx.core.content.e
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                return IntentSanitizer.Builder.l((String) obj);
            }
        };
        private Predicate<String> mAllowedPackages = new Predicate() { // from class: androidx.core.content.f
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                return IntentSanitizer.Builder.m((String) obj);
            }
        };
        private Predicate<ComponentName> mAllowedComponents = new Predicate() { // from class: androidx.core.content.g
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                return IntentSanitizer.Builder.n((ComponentName) obj);
            }
        };
        private Map<String, Predicate<Object>> mAllowedExtras = new HashMap();
        private boolean mAllowClipDataText = false;
        private Predicate<Uri> mAllowedClipDataUri = new Predicate() { // from class: androidx.core.content.h
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                return IntentSanitizer.Builder.o((Uri) obj);
            }
        };
        private Predicate<ClipData> mAllowedClipData = new Predicate() { // from class: androidx.core.content.i
            @Override // androidx.core.util.Predicate
            public final boolean test(Object obj) {
                return IntentSanitizer.Builder.p((ClipData) obj);
            }
        };

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean i(String str) {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean j(Uri uri) {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean k(String str) {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean l(String str) {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean m(String str) {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean n(ComponentName componentName) {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean o(Uri uri) {
            return false;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ boolean p(ClipData clipData) {
            return false;
        }
    }

    @RequiresApi
    private static class Api15Impl {
        private Api15Impl() {
        }

        @DoNotInline
        static Intent a(Intent intent) {
            return intent.getSelector();
        }

        @DoNotInline
        static void b(Intent intent, Intent intent2) {
            intent.setSelector(intent2);
        }
    }

    @RequiresApi
    private static class Api29Impl {
        private Api29Impl() {
        }

        @DoNotInline
        static String a(Intent intent) {
            return intent.getIdentifier();
        }

        @DoNotInline
        static Intent b(Intent intent, String str) {
            return intent.setIdentifier(str);
        }
    }

    private IntentSanitizer() {
    }
}
