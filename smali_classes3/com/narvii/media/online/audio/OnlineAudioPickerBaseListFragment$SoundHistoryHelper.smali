.class public Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;
.super Ljava/lang/Object;
.source "OnlineAudioPickerBaseListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "SoundHistoryHelper"
.end annotation


# static fields
.field private static final KEY_NAME:Ljava/lang/String; = "history_list"

.field private static final PREF_NAME:Ljava/lang/String; = "music_library_V2"

.field private static instance:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;


# instance fields
.field private cache:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/online/audio/model/Sound;",
            ">;"
        }
    .end annotation
.end field

.field private final prefs:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 339
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 340
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "music_library_V2"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->prefs:Landroid/content/SharedPreferences;

    .line 341
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->loadList()V

    return-void
.end method

.method static synthetic access$000(Lcom/narvii/app/NVContext;)Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;
    .locals 0

    .line 321
    invoke-static {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->getInstance(Lcom/narvii/app/NVContext;)Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;

    move-result-object p0

    return-object p0
.end method

.method private static getInstance(Lcom/narvii/app/NVContext;)Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;
    .locals 1

    .line 333
    sget-object v0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->instance:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;

    if-nez v0, :cond_0

    .line 334
    new-instance v0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;

    invoke-direct {v0, p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;-><init>(Lcom/narvii/app/NVContext;)V

    sput-object v0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->instance:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;

    .line 336
    :cond_0
    sget-object p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->instance:Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;

    return-object p0
.end method

.method private loadList()V
    .locals 3

    .line 364
    :try_start_0
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->prefs:Landroid/content/SharedPreferences;

    const-string v1, "history_list"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/narvii/media/online/audio/model/Sound;

    invoke-static {v0, v1}, Lcom/narvii/util/JacksonUtils;->readListAs(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->cache:Ljava/util/ArrayList;

    .line 366
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->cache:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 367
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->cache:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 370
    :catch_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->cache:Ljava/util/ArrayList;

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected add(Lcom/narvii/media/online/audio/model/Sound;)V
    .locals 2

    .line 345
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->cache:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 346
    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->cache:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 347
    :goto_0
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->cache:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/16 v0, 0x1e

    if-le p1, v0, :cond_0

    .line 348
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->cache:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 350
    :cond_0
    iget-object p1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object v0, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->cache:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "history_list"

    invoke-interface {p1, v1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method protected getList()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/narvii/media/online/audio/model/Sound;",
            ">;"
        }
    .end annotation

    .line 354
    invoke-direct {p0}, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->loadList()V

    .line 355
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 356
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->cache:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 357
    iget-object v1, p0, Lcom/narvii/media/online/audio/OnlineAudioPickerBaseListFragment$SoundHistoryHelper;->cache:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method
