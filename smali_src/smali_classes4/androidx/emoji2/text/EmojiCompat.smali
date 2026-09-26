.class public Landroidx/emoji2/text/EmojiCompat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/AnyThread;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/EmojiCompat$CompatInternal19;,
        Landroidx/emoji2/text/EmojiCompat$CompatInternal;,
        Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;,
        Landroidx/emoji2/text/EmojiCompat$Config;,
        Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoaderCallback;,
        Landroidx/emoji2/text/EmojiCompat$GlyphChecker;,
        Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;,
        Landroidx/emoji2/text/EmojiCompat$InitCallback;,
        Landroidx/emoji2/text/EmojiCompat$SpanFactory;,
        Landroidx/emoji2/text/EmojiCompat$LoadStrategy;,
        Landroidx/emoji2/text/EmojiCompat$ReplaceStrategy;
    }
.end annotation


# static fields
.field private static final CONFIG_LOCK:Ljava/lang/Object;

.field public static final EDITOR_INFO_METAVERSION_KEY:Ljava/lang/String; = "android.support.text.emoji.emojiCompat_metadataVersion"

.field public static final EDITOR_INFO_REPLACE_ALL_KEY:Ljava/lang/String; = "android.support.text.emoji.emojiCompat_replaceAll"

.field static final EMOJI_COUNT_UNLIMITED:I = 0x7fffffff
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation
.end field

.field private static final INSTANCE_LOCK:Ljava/lang/Object;

.field public static final LOAD_STATE_DEFAULT:I = 0x3

.field public static final LOAD_STATE_FAILED:I = 0x2

.field public static final LOAD_STATE_LOADING:I = 0x0

.field public static final LOAD_STATE_SUCCEEDED:I = 0x1

.field public static final LOAD_STRATEGY_DEFAULT:I = 0x0

.field public static final LOAD_STRATEGY_MANUAL:I = 0x1

.field private static final NOT_INITIALIZED_ERROR_TEXT:Ljava/lang/String; = "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK\'s manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message."

.field public static final REPLACE_STRATEGY_ALL:I = 0x1

.field public static final REPLACE_STRATEGY_DEFAULT:I = 0x0

.field public static final REPLACE_STRATEGY_NON_EXISTENT:I = 0x2

.field private static volatile sHasDoneDefaultConfigLookup:Z
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private static volatile sInstance:Landroidx/emoji2/text/EmojiCompat;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field final mEmojiAsDefaultStyleExceptions:[I
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mEmojiSpanIndicatorColor:I

.field private final mEmojiSpanIndicatorEnabled:Z

.field private final mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

.field private final mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mInitCallbacks:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/emoji2/text/EmojiCompat$InitCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private volatile mLoadState:I
    .annotation build Landroidx/annotation/GuardedBy;
    .end annotation
.end field

.field private final mMainHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mMetadataLoadStrategy:I

.field final mMetadataLoader:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field final mReplaceAll:Z

.field final mUseEmojiAsDefaultStyle:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    .line 2
    new-instance v0, Ljava/lang/Object;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    sput-object v0, Landroidx/emoji2/text/EmojiCompat;->INSTANCE_LOCK:Ljava/lang/Object;

    .line 8
    .line 9
    new-instance v0, Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 13
    .line 14
    sput-object v0, Landroidx/emoji2/text/EmojiCompat;->CONFIG_LOCK:Ljava/lang/Object;

    .line 15
    return-void
.end method

.method private constructor <init>(Landroidx/emoji2/text/EmojiCompat$Config;)V
    .locals 2
    .param p1    # Landroidx/emoji2/text/EmojiCompat$Config;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 6
    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    .line 9
    .line 10
    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 11
    const/4 v0, 0x3

    .line 12
    .line 13
    iput v0, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    .line 14
    .line 15
    iget-boolean v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mReplaceAll:Z

    .line 16
    .line 17
    iput-boolean v0, p0, Landroidx/emoji2/text/EmojiCompat;->mReplaceAll:Z

    .line 18
    .line 19
    iget-boolean v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mUseEmojiAsDefaultStyle:Z

    .line 20
    .line 21
    iput-boolean v0, p0, Landroidx/emoji2/text/EmojiCompat;->mUseEmojiAsDefaultStyle:Z

    .line 22
    .line 23
    iget-object v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mEmojiAsDefaultStyleExceptions:[I

    .line 24
    .line 25
    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mEmojiAsDefaultStyleExceptions:[I

    .line 26
    .line 27
    iget-boolean v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mEmojiSpanIndicatorEnabled:Z

    .line 28
    .line 29
    iput-boolean v0, p0, Landroidx/emoji2/text/EmojiCompat;->mEmojiSpanIndicatorEnabled:Z

    .line 30
    .line 31
    iget v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mEmojiSpanIndicatorColor:I

    .line 32
    .line 33
    iput v0, p0, Landroidx/emoji2/text/EmojiCompat;->mEmojiSpanIndicatorColor:I

    .line 34
    .line 35
    iget-object v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mMetadataLoader:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    .line 36
    .line 37
    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mMetadataLoader:Landroidx/emoji2/text/EmojiCompat$MetadataRepoLoader;

    .line 38
    .line 39
    iget v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mMetadataLoadStrategy:I

    .line 40
    .line 41
    iput v0, p0, Landroidx/emoji2/text/EmojiCompat;->mMetadataLoadStrategy:I

    .line 42
    .line 43
    iget-object v0, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    .line 44
    .line 45
    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    .line 46
    .line 47
    new-instance v0, Landroid/os/Handler;

    .line 48
    .line 49
    .line 50
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 51
    move-result-object v1

    .line 52
    .line 53
    .line 54
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 55
    .line 56
    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mMainHandler:Landroid/os/Handler;

    .line 57
    .line 58
    new-instance v0, Landroidx/collection/ArraySet;

    .line 59
    .line 60
    .line 61
    invoke-direct {v0}, Landroidx/collection/ArraySet;-><init>()V

    .line 62
    .line 63
    iput-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    .line 64
    .line 65
    iget-object v1, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mInitCallbacks:Ljava/util/Set;

    .line 66
    .line 67
    if-eqz v1, :cond_0

    .line 68
    .line 69
    .line 70
    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    .line 71
    move-result v1

    .line 72
    .line 73
    if-nez v1, :cond_0

    .line 74
    .line 75
    iget-object p1, p1, Landroidx/emoji2/text/EmojiCompat$Config;->mInitCallbacks:Ljava/util/Set;

    .line 76
    .line 77
    .line 78
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 79
    .line 80
    :cond_0
    new-instance p1, Landroidx/emoji2/text/EmojiCompat$CompatInternal19;

    .line 81
    .line 82
    .line 83
    invoke-direct {p1, p0}, Landroidx/emoji2/text/EmojiCompat$CompatInternal19;-><init>(Landroidx/emoji2/text/EmojiCompat;)V

    .line 84
    .line 85
    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    .line 86
    .line 87
    .line 88
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat;->l()V

    .line 89
    return-void
.end method

.method static synthetic a(Landroidx/emoji2/text/EmojiCompat;)Landroidx/emoji2/text/EmojiCompat$GlyphChecker;
    .locals 0

    .line 1
    .line 2
    iget-object p0, p0, Landroidx/emoji2/text/EmojiCompat;->mGlyphChecker:Landroidx/emoji2/text/EmojiCompat$GlyphChecker;

    .line 3
    return-object p0
.end method

.method public static b()Landroidx/emoji2/text/EmojiCompat;
    .locals 4
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->INSTANCE_LOCK:Ljava/lang/Object;

    .line 3
    monitor-enter v0

    .line 4
    .line 5
    :try_start_0
    sget-object v1, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    const/4 v2, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    .line 12
    :goto_0
    const-string v3, "EmojiCompat is not initialized.\n\nYou must initialize EmojiCompat prior to referencing the EmojiCompat instance.\n\nThe most likely cause of this error is disabling the EmojiCompatInitializer\neither explicitly in AndroidManifest.xml, or by including\nandroidx.emoji2:emoji2-bundled.\n\nAutomatic initialization is typically performed by EmojiCompatInitializer. If\nyou are not expecting to initialize EmojiCompat manually in your application,\nplease check to ensure it has not been removed from your APK\'s manifest. You can\ndo this in Android Studio using Build > Analyze APK.\n\nIn the APK Analyzer, ensure that the startup entry for\nEmojiCompatInitializer and InitializationProvider is present in\n AndroidManifest.xml. If it is missing or contains tools:node=\"remove\", and you\nintend to use automatic configuration, verify:\n\n  1. Your application does not include emoji2-bundled\n  2. All modules do not contain an exclusion manifest rule for\n     EmojiCompatInitializer or InitializationProvider. For more information\n     about manifest exclusions see the documentation for the androidx startup\n     library.\n\nIf you intend to use emoji2-bundled, please call EmojiCompat.init. You can\nlearn more in the documentation for BundledEmojiCompatConfig.\n\nIf you intended to perform manual configuration, it is recommended that you call\nEmojiCompat.init immediately on application startup.\n\nIf you still cannot resolve this issue, please open a bug with your specific\nconfiguration to help improve error message."

    .line 13
    .line 14
    .line 15
    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->l(ZLjava/lang/String;)V

    .line 16
    monitor-exit v0

    .line 17
    return-object v1

    .line 18
    :catchall_0
    move-exception v1

    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw v1
.end method

.method public static e(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z
    .locals 0
    .param p0    # Landroid/view/inputmethod/InputConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1    # Landroid/text/Editable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2, p3, p4}, Landroidx/emoji2/text/EmojiProcessor;->c(Landroid/view/inputmethod/InputConnection;Landroid/text/Editable;IIZ)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static f(Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 0
    .param p0    # Landroid/text/Editable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/KeyEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-static {p0, p1, p2}, Landroidx/emoji2/text/EmojiProcessor;->d(Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static g(Landroidx/emoji2/text/EmojiCompat$Config;)Landroidx/emoji2/text/EmojiCompat;
    .locals 2
    .param p0    # Landroidx/emoji2/text/EmojiCompat$Config;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    .line 2
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    .line 3
    .line 4
    if-nez v0, :cond_1

    .line 5
    .line 6
    sget-object v1, Landroidx/emoji2/text/EmojiCompat;->INSTANCE_LOCK:Ljava/lang/Object;

    .line 7
    monitor-enter v1

    .line 8
    .line 9
    :try_start_0
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    new-instance v0, Landroidx/emoji2/text/EmojiCompat;

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, p0}, Landroidx/emoji2/text/EmojiCompat;-><init>(Landroidx/emoji2/text/EmojiCompat$Config;)V

    .line 17
    .line 18
    sput-object v0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    .line 19
    goto :goto_0

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_1

    .line 22
    :cond_0
    :goto_0
    monitor-exit v1

    .line 23
    goto :goto_2

    .line 24
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    throw p0

    .line 26
    :cond_1
    :goto_2
    return-object v0
.end method

.method public static h()Z
    .locals 1

    .line 1
    sget-object v0, Landroidx/emoji2/text/EmojiCompat;->sInstance:Landroidx/emoji2/text/EmojiCompat;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private j()Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiCompat;->d()I

    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    return v1
.end method

.method private l()V
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 10
    .line 11
    :try_start_0
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mMetadataLoadStrategy:I

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    const/4 v0, 0x0

    .line 15
    .line 16
    iput v0, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    .line 19
    goto :goto_1

    .line 20
    .line 21
    :cond_0
    :goto_0
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 22
    .line 23
    .line 24
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 25
    move-result-object v0

    .line 26
    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiCompat;->d()I

    .line 32
    move-result v0

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->a()V

    .line 40
    :cond_1
    return-void

    .line 41
    .line 42
    :goto_1
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 43
    .line 44
    .line 45
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 46
    move-result-object v1

    .line 47
    .line 48
    .line 49
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 50
    throw v0
.end method


# virtual methods
.method public c()I
    .locals 1
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mEmojiSpanIndicatorColor:I

    return v0
.end method

.method public d()I
    .locals 2

    .line 1
    .line 2
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 3
    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 6
    move-result-object v0

    .line 7
    .line 8
    .line 9
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 10
    .line 11
    :try_start_0
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    .line 13
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 14
    .line 15
    .line 16
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 17
    move-result-object v1

    .line 18
    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 21
    return v0

    .line 22
    :catchall_0
    move-exception v0

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    .line 28
    move-result-object v1

    .line 29
    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 32
    throw v0
.end method

.method public i()Z
    .locals 1
    .annotation build Landroidx/annotation/RestrictTo;
    .end annotation

    .line 1
    iget-boolean v0, p0, Landroidx/emoji2/text/EmojiCompat;->mEmojiSpanIndicatorEnabled:Z

    return v0
.end method

.method public k()V
    .locals 3

    .line 1
    .line 2
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mMetadataLoadStrategy:I

    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    .line 6
    if-ne v0, v2, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v2, v1

    .line 9
    .line 10
    :goto_0
    const-string v0, "Set metadataLoadStrategy to LOAD_STRATEGY_MANUAL to execute manual loading"

    .line 11
    .line 12
    .line 13
    invoke-static {v2, v0}, Landroidx/core/util/Preconditions;->l(ZLjava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat;->j()Z

    .line 17
    move-result v0

    .line 18
    .line 19
    if-eqz v0, :cond_1

    .line 20
    return-void

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 23
    .line 24
    .line 25
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 26
    move-result-object v0

    .line 27
    .line 28
    .line 29
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 30
    .line 31
    :try_start_0
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    .line 33
    if-nez v0, :cond_2

    .line 34
    .line 35
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 36
    .line 37
    .line 38
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 39
    move-result-object v0

    .line 40
    .line 41
    .line 42
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 43
    return-void

    .line 44
    .line 45
    :cond_2
    :try_start_1
    iput v1, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    .line 47
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 48
    .line 49
    .line 50
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 51
    move-result-object v0

    .line 52
    .line 53
    .line 54
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 55
    .line 56
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v0}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->a()V

    .line 60
    return-void

    .line 61
    :catchall_0
    move-exception v0

    .line 62
    .line 63
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 64
    .line 65
    .line 66
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 67
    move-result-object v1

    .line 68
    .line 69
    .line 70
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 71
    throw v0
.end method

.method m(Ljava/lang/Throwable;)V
    .locals 4
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 15
    const/4 v1, 0x2

    .line 16
    .line 17
    :try_start_0
    iput v1, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mMainHandler:Landroid/os/Handler;

    .line 39
    .line 40
    new-instance v2, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;

    .line 41
    .line 42
    iget v3, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, v0, v3, p1}, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;-><init>(Ljava/util/Collection;ILjava/lang/Throwable;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception p1

    .line 51
    .line 52
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 53
    .line 54
    .line 55
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 56
    move-result-object v0

    .line 57
    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 60
    throw p1
.end method

.method n()V
    .locals 4

    .line 1
    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    .line 7
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 8
    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 11
    move-result-object v1

    .line 12
    .line 13
    .line 14
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 15
    const/4 v1, 0x1

    .line 16
    .line 17
    :try_start_0
    iput v1, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    .line 18
    .line 19
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    .line 20
    .line 21
    .line 22
    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    .line 25
    .line 26
    .line 27
    invoke-interface {v1}, Ljava/util/Set;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 30
    .line 31
    .line 32
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 33
    move-result-object v1

    .line 34
    .line 35
    .line 36
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 37
    .line 38
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mMainHandler:Landroid/os/Handler;

    .line 39
    .line 40
    new-instance v2, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;

    .line 41
    .line 42
    iget v3, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    .line 43
    .line 44
    .line 45
    invoke-direct {v2, v0, v3}, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;-><init>(Ljava/util/Collection;I)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 49
    return-void

    .line 50
    :catchall_0
    move-exception v0

    .line 51
    .line 52
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 53
    .line 54
    .line 55
    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 56
    move-result-object v1

    .line 57
    .line 58
    .line 59
    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 60
    throw v0
.end method

.method public o(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    move v1, v0

    .line 5
    goto :goto_0

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 9
    move-result v1

    .line 10
    .line 11
    .line 12
    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Landroidx/emoji2/text/EmojiCompat;->p(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;

    .line 13
    move-result-object p1

    .line 14
    return-object p1
.end method

.method public p(Ljava/lang/CharSequence;II)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    const v0, 0x7fffffff

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1, p2, p3, v0}, Landroidx/emoji2/text/EmojiCompat;->q(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;

    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method public q(Ljava/lang/CharSequence;III)Ljava/lang/CharSequence;
    .locals 6
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    const/4 v5, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move v2, p2

    .line 5
    move v3, p3

    .line 6
    move v4, p4

    .line 7
    .line 8
    .line 9
    invoke-virtual/range {v0 .. v5}, Landroidx/emoji2/text/EmojiCompat;->r(Ljava/lang/CharSequence;IIII)Ljava/lang/CharSequence;

    .line 10
    move-result-object p1

    .line 11
    return-object p1
.end method

.method public r(Ljava/lang/CharSequence;IIII)Ljava/lang/CharSequence;
    .locals 7
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/IntRange;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat;->j()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    const-string v1, "Not initialized yet"

    .line 7
    .line 8
    .line 9
    invoke-static {v0, v1}, Landroidx/core/util/Preconditions;->l(ZLjava/lang/String;)V

    .line 10
    .line 11
    const-string v0, "start cannot be negative"

    .line 12
    .line 13
    .line 14
    invoke-static {p2, v0}, Landroidx/core/util/Preconditions;->g(ILjava/lang/String;)I

    .line 15
    .line 16
    const-string v0, "end cannot be negative"

    .line 17
    .line 18
    .line 19
    invoke-static {p3, v0}, Landroidx/core/util/Preconditions;->g(ILjava/lang/String;)I

    .line 20
    .line 21
    const-string v0, "maxEmojiCount cannot be negative"

    .line 22
    .line 23
    .line 24
    invoke-static {p4, v0}, Landroidx/core/util/Preconditions;->g(ILjava/lang/String;)I

    .line 25
    const/4 v0, 0x0

    .line 26
    const/4 v1, 0x1

    .line 27
    .line 28
    if-gt p2, p3, :cond_0

    .line 29
    move v2, v1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v2, v0

    .line 32
    .line 33
    :goto_0
    const-string v3, "start should be <= than end"

    .line 34
    .line 35
    .line 36
    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->b(ZLjava/lang/Object;)V

    .line 37
    .line 38
    if-nez p1, :cond_1

    .line 39
    const/4 p1, 0x0

    .line 40
    return-object p1

    .line 41
    .line 42
    .line 43
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 44
    move-result v2

    .line 45
    .line 46
    if-gt p2, v2, :cond_2

    .line 47
    move v2, v1

    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move v2, v0

    .line 50
    .line 51
    :goto_1
    const-string v3, "start should be < than charSequence length"

    .line 52
    .line 53
    .line 54
    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->b(ZLjava/lang/Object;)V

    .line 55
    .line 56
    .line 57
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 58
    move-result v2

    .line 59
    .line 60
    if-gt p3, v2, :cond_3

    .line 61
    move v2, v1

    .line 62
    goto :goto_2

    .line 63
    :cond_3
    move v2, v0

    .line 64
    .line 65
    :goto_2
    const-string v3, "end should be < than charSequence length"

    .line 66
    .line 67
    .line 68
    invoke-static {v2, v3}, Landroidx/core/util/Preconditions;->b(ZLjava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 72
    move-result v2

    .line 73
    .line 74
    if-eqz v2, :cond_7

    .line 75
    .line 76
    if-ne p2, p3, :cond_4

    .line 77
    goto :goto_4

    .line 78
    .line 79
    :cond_4
    if-eq p5, v1, :cond_6

    .line 80
    const/4 v1, 0x2

    .line 81
    .line 82
    if-eq p5, v1, :cond_5

    .line 83
    .line 84
    iget-boolean v0, p0, Landroidx/emoji2/text/EmojiCompat;->mReplaceAll:Z

    .line 85
    :cond_5
    move v6, v0

    .line 86
    goto :goto_3

    .line 87
    :cond_6
    move v6, v1

    .line 88
    .line 89
    :goto_3
    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    .line 90
    move-object v2, p1

    .line 91
    move v3, p2

    .line 92
    move v4, p3

    .line 93
    move v5, p4

    .line 94
    .line 95
    .line 96
    invoke-virtual/range {v1 .. v6}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->b(Ljava/lang/CharSequence;IIIZ)Ljava/lang/CharSequence;

    .line 97
    move-result-object p1

    .line 98
    :cond_7
    :goto_4
    return-object p1
.end method

.method public s(Landroidx/emoji2/text/EmojiCompat$InitCallback;)V
    .locals 3
    .param p1    # Landroidx/emoji2/text/EmojiCompat$InitCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "initCallback cannot be null"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 15
    .line 16
    :try_start_0
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    .line 17
    const/4 v1, 0x1

    .line 18
    .line 19
    if-eq v0, v1, :cond_1

    .line 20
    .line 21
    iget v0, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    .line 22
    const/4 v1, 0x2

    .line 23
    .line 24
    if-ne v0, v1, :cond_0

    .line 25
    goto :goto_0

    .line 26
    .line 27
    :cond_0
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    .line 28
    .line 29
    .line 30
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 31
    goto :goto_1

    .line 32
    :catchall_0
    move-exception p1

    .line 33
    goto :goto_2

    .line 34
    .line 35
    :cond_1
    :goto_0
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mMainHandler:Landroid/os/Handler;

    .line 36
    .line 37
    new-instance v1, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;

    .line 38
    .line 39
    iget v2, p0, Landroidx/emoji2/text/EmojiCompat;->mLoadState:I

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, p1, v2}, Landroidx/emoji2/text/EmojiCompat$ListenerDispatcher;-><init>(Landroidx/emoji2/text/EmojiCompat$InitCallback;I)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    .line 47
    :goto_1
    iget-object p1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 48
    .line 49
    .line 50
    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 51
    move-result-object p1

    .line 52
    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 55
    return-void

    .line 56
    .line 57
    :goto_2
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 58
    .line 59
    .line 60
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 61
    move-result-object v0

    .line 62
    .line 63
    .line 64
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 65
    throw p1
.end method

.method public t(Landroidx/emoji2/text/EmojiCompat$InitCallback;)V
    .locals 1
    .param p1    # Landroidx/emoji2/text/EmojiCompat$InitCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    const-string v0, "initCallback cannot be null"

    .line 3
    .line 4
    .line 5
    invoke-static {p1, v0}, Landroidx/core/util/Preconditions;->j(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 8
    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 11
    move-result-object v0

    .line 12
    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->lock()V

    .line 15
    .line 16
    :try_start_0
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitCallbacks:Ljava/util/Set;

    .line 17
    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    iget-object p1, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 22
    .line 23
    .line 24
    invoke-interface {p1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 25
    move-result-object p1

    .line 26
    .line 27
    .line 28
    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 29
    return-void

    .line 30
    :catchall_0
    move-exception p1

    .line 31
    .line 32
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mInitLock:Ljava/util/concurrent/locks/ReadWriteLock;

    .line 33
    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    .line 36
    move-result-object v0

    .line 37
    .line 38
    .line 39
    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    .line 40
    throw p1
.end method

.method public u(Landroid/view/inputmethod/EditorInfo;)V
    .locals 1
    .param p1    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat;->j()Z

    .line 4
    move-result v0

    .line 5
    .line 6
    if-eqz v0, :cond_2

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    goto :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 12
    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    new-instance v0, Landroid/os/Bundle;

    .line 16
    .line 17
    .line 18
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 19
    .line 20
    iput-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    .line 21
    .line 22
    :cond_1
    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat;->mHelper:Landroidx/emoji2/text/EmojiCompat$CompatInternal;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroidx/emoji2/text/EmojiCompat$CompatInternal;->c(Landroid/view/inputmethod/EditorInfo;)V

    .line 26
    :cond_2
    :goto_0
    return-void
.end method
