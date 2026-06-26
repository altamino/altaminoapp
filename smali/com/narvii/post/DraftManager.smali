.class public Lcom/narvii/post/DraftManager;
.super Ljava/lang/Object;
.source "DraftManager.java"


# instance fields
.field private final DI_COMP:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/narvii/post/DraftInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final DI_COMP_CREATE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/narvii/post/DraftInfo;",
            ">;"
        }
    .end annotation
.end field

.field private communityId:I

.field private context:Lcom/narvii/app/NVContext;

.field private draftsDir:Ljava/io/File;

.field private logCreatedTime:Z


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;I)V
    .locals 3

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    new-instance v0, Lcom/narvii/post/DraftManager$2;

    invoke-direct {v0, p0}, Lcom/narvii/post/DraftManager$2;-><init>(Lcom/narvii/post/DraftManager;)V

    iput-object v0, p0, Lcom/narvii/post/DraftManager;->DI_COMP:Ljava/util/Comparator;

    .line 362
    new-instance v0, Lcom/narvii/post/DraftManager$3;

    invoke-direct {v0, p0}, Lcom/narvii/post/DraftManager$3;-><init>(Lcom/narvii/post/DraftManager;)V

    iput-object v0, p0, Lcom/narvii/post/DraftManager;->DI_COMP_CREATE:Ljava/util/Comparator;

    .line 43
    iput-object p1, p0, Lcom/narvii/post/DraftManager;->context:Lcom/narvii/app/NVContext;

    .line 44
    iput p2, p0, Lcom/narvii/post/DraftManager;->communityId:I

    .line 45
    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/post/DraftManager;->getDraftsRootDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    .line 46
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 47
    iput-object v0, p0, Lcom/narvii/post/DraftManager;->draftsDir:Ljava/io/File;

    return-void
.end method

.method public static archiveDrafts(Lcom/narvii/app/NVContext;Z)V
    .locals 2

    .line 55
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/narvii/post/DraftManager;->getDraftsRootDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "account"

    .line 58
    invoke-interface {p0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/narvii/account/AccountService;

    .line 59
    invoke-virtual {v1}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 61
    invoke-interface {p0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, v1}, Lcom/narvii/post/DraftManager;->getArchiveFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    .line 63
    :try_start_0
    invoke-static {v0}, Lcom/narvii/post/DraftManager;->clearRedundantFiles(Ljava/io/File;)V

    .line 64
    invoke-static {v0, p0}, Lcom/narvii/util/ZipUtils;->storeFile(Ljava/io/File;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "fail to archive drafts"

    .line 66
    invoke-static {v1, p0}, Lcom/narvii/util/Log;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 70
    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    :cond_2
    return-void
.end method

.method private static clearRedundantFiles(Ljava/io/File;)V
    .locals 9

    .line 75
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    .line 76
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_2

    .line 79
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_2

    aget-object v6, v3, v5

    .line 81
    new-instance v7, Ljava/io/File;

    const-string/jumbo v8, "preview_only_folder"

    invoke-direct {v7, v6, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 82
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 83
    invoke-static {v7}, Lcom/narvii/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method private createNewId()Ljava/lang/String;
    .locals 1

    .line 120
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getArchiveFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 106
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v2, "archive"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drafts-"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".zip"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getDraftsRootDir(Landroid/content/Context;)Ljava/io/File;
    .locals 2

    .line 91
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "drafts"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static listArchiveFiles(Landroid/content/Context;)[Ljava/io/File;
    .locals 2

    .line 95
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "archive"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 96
    new-instance p0, Lcom/narvii/post/DraftManager$1;

    invoke-direct {p0}, Lcom/narvii/post/DraftManager$1;-><init>()V

    invoke-virtual {v0, p0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/io/File;

    :cond_0
    return-object p0
.end method

.method private listSorted(Ljava/util/Comparator;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "Lcom/narvii/post/DraftInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/narvii/post/DraftInfo;",
            ">;"
        }
    .end annotation

    .line 212
    invoke-direct {p0}, Lcom/narvii/post/DraftManager;->prepare()Z

    .line 213
    iget-object v0, p0, Lcom/narvii/post/DraftManager;->draftsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 215
    iget-object v1, p0, Lcom/narvii/post/DraftManager;->draftsDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 216
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/narvii/post/DraftManager;->getInfo(Ljava/lang/String;)Lcom/narvii/post/DraftInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 218
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 221
    :cond_1
    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    return-object v0

    .line 224
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private prepare()Z
    .locals 7

    .line 128
    iget-object v0, p0, Lcom/narvii/post/DraftManager;->context:Lcom/narvii/app/NVContext;

    const-string v1, "account"

    invoke-interface {v0, v1}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/account/AccountService;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 132
    :cond_0
    invoke-virtual {v0}, Lcom/narvii/account/AccountService;->getUserId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 134
    iget-object v2, p0, Lcom/narvii/post/DraftManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/narvii/post/DraftManager;->getArchiveFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_2

    .line 135
    iget-object v2, p0, Lcom/narvii/post/DraftManager;->context:Lcom/narvii/app/NVContext;

    invoke-interface {v2}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/narvii/post/DraftManager;->getDraftsRootDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    .line 136
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    return v0

    .line 139
    :cond_1
    invoke-static {v0, v2}, Lcom/narvii/util/ZipUtils;->extract(Ljava/io/File;Ljava/io/File;)Z

    .line 140
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    return v1
.end method

.method public static removeOldDrafts(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    const-string/jumbo v1, "postindex"

    .line 110
    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 111
    invoke-interface {v1}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    .line 112
    invoke-interface {v1, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "index"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 113
    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 116
    :cond_1
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public clearDrafts()V
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/narvii/post/DraftManager;->draftsDir:Ljava/io/File;

    invoke-static {v0}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    return-void
.end method

.method public createDraft(Ljava/lang/String;Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/narvii/post/PostObject;)Ljava/lang/String;
    .locals 4

    .line 272
    invoke-direct {p0}, Lcom/narvii/post/DraftManager;->prepare()Z

    .line 273
    invoke-direct {p0}, Lcom/narvii/post/DraftManager;->createNewId()Ljava/lang/String;

    move-result-object v0

    .line 274
    invoke-virtual {p0, v0}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 275
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 276
    new-instance v2, Ljava/io/File;

    const-string/jumbo v3, "type"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2, p1}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z

    if-eqz p2, :cond_0

    .line 277
    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->size()I

    move-result p1

    if-lez p1, :cond_0

    .line 278
    new-instance p1, Ljava/io/File;

    const-string/jumbo v2, "params"

    invoke-direct {p1, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z

    :cond_0
    if-eqz p3, :cond_1

    .line 281
    new-instance p1, Ljava/io/File;

    const-string/jumbo p2, "post"

    invoke-direct {p1, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p3}, Lcom/narvii/util/JacksonUtils;->safeWriteAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z

    .line 283
    :cond_1
    iget-boolean p1, p0, Lcom/narvii/post/DraftManager;->logCreatedTime:Z

    if-eqz p1, :cond_2

    .line 284
    new-instance p1, Ljava/io/File;

    const-string p2, "createTime"

    invoke-direct {p1, v1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, ""

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;Ljava/lang/String;)Z

    :cond_2
    return-object v0
.end method

.method public deleteDraft(Ljava/lang/String;)V
    .locals 0

    .line 335
    invoke-virtual {p0, p1}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lcom/narvii/util/Utils;->deleteDir(Ljava/io/File;)Z

    return-void
.end method

.method public deleteDrafts(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/post/DraftInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 343
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 346
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/post/DraftInfo;

    if-nez v0, :cond_1

    goto :goto_0

    .line 350
    :cond_1
    iget-object v0, v0, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/narvii/post/DraftManager;->deleteDraft(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public getDir(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .line 124
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/narvii/post/DraftManager;->draftsDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getInfo(Ljava/lang/String;)Lcom/narvii/post/DraftInfo;
    .locals 7

    .line 146
    invoke-virtual {p0, p1}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 147
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "type"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    return-object v3

    .line 151
    :cond_0
    new-instance v2, Lcom/narvii/post/DraftInfo;

    invoke-direct {v2}, Lcom/narvii/post/DraftInfo;-><init>()V

    .line 152
    iput-object p1, v2, Lcom/narvii/post/DraftInfo;->id:Ljava/lang/String;

    .line 153
    iput-object v1, v2, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    .line 154
    new-instance p1, Ljava/io/File;

    const-string/jumbo v1, "params"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    .line 155
    invoke-static {p1}, Lcom/narvii/util/JacksonUtils;->createObjectNode(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 156
    invoke-virtual {p1}, Lcom/fasterxml/jackson/databind/node/ObjectNode;->size()I

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move-object p1, v3

    :cond_2
    iput-object p1, v2, Lcom/narvii/post/DraftInfo;->params:Lcom/fasterxml/jackson/databind/node/ObjectNode;

    .line 157
    new-instance p1, Ljava/io/File;

    const-string/jumbo v1, "post"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, v2, Lcom/narvii/post/DraftInfo;->modifiedTime:J

    .line 158
    iget-boolean p1, p0, Lcom/narvii/post/DraftManager;->logCreatedTime:Z

    if-eqz p1, :cond_4

    .line 159
    new-instance p1, Ljava/io/File;

    const-string v1, "createTime"

    invoke-direct {p1, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/narvii/util/Utils;->readStringFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 162
    :try_start_0
    invoke-static {p1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iput-wide v0, v2, Lcom/narvii/post/DraftInfo;->createdTime:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 164
    :catch_0
    iget-wide v0, v2, Lcom/narvii/post/DraftInfo;->modifiedTime:J

    iput-wide v0, v2, Lcom/narvii/post/DraftInfo;->createdTime:J

    goto :goto_0

    .line 167
    :cond_3
    iget-wide v0, v2, Lcom/narvii/post/DraftInfo;->modifiedTime:J

    iput-wide v0, v2, Lcom/narvii/post/DraftInfo;->createdTime:J

    :cond_4
    :goto_0
    return-object v2
.end method

.method public getLatestDraftInfo(Ljava/lang/String;)Lcom/narvii/post/DraftInfo;
    .locals 1

    .line 262
    invoke-direct {p0}, Lcom/narvii/post/DraftManager;->prepare()Z

    .line 263
    invoke-virtual {p0, p1}, Lcom/narvii/post/DraftManager;->list(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 265
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 266
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/post/DraftInfo;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public hasDraft(Ljava/lang/String;)Z
    .locals 5

    .line 249
    invoke-direct {p0}, Lcom/narvii/post/DraftManager;->prepare()Z

    .line 250
    iget-object v0, p0, Lcom/narvii/post/DraftManager;->draftsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 251
    iget-object v0, p0, Lcom/narvii/post/DraftManager;->draftsDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    .line 252
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/narvii/post/DraftManager;->getInfo(Ljava/lang/String;)Lcom/narvii/post/DraftInfo;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 253
    iget-object v4, v4, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    invoke-static {p1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public isDraftExists(Ljava/lang/String;)Z
    .locals 1

    .line 174
    invoke-virtual {p0, p1}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public list()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/post/DraftInfo;",
            ">;"
        }
    .end annotation

    .line 185
    iget-object v0, p0, Lcom/narvii/post/DraftManager;->DI_COMP:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcom/narvii/post/DraftManager;->listSorted(Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public list(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/narvii/post/DraftInfo;",
            ">;"
        }
    .end annotation

    .line 230
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/narvii/post/DraftManager;->list()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 234
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/post/DraftManager;->list()Ljava/util/List;

    move-result-object v0

    .line 235
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 236
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 238
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 239
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 240
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/post/DraftInfo;

    if-eqz v2, :cond_3

    .line 241
    iget-object v2, v2, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 242
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public listSortedByCreateTime()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/post/DraftInfo;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lcom/narvii/post/DraftManager;->DI_COMP_CREATE:Ljava/util/Comparator;

    invoke-direct {p0, v0}, Lcom/narvii/post/DraftManager;->listSorted(Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public listSortedByCreateTime(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/narvii/post/DraftInfo;",
            ">;"
        }
    .end annotation

    .line 193
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    invoke-virtual {p0}, Lcom/narvii/post/DraftManager;->list()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 197
    :cond_0
    invoke-virtual {p0}, Lcom/narvii/post/DraftManager;->listSortedByCreateTime()Ljava/util/List;

    move-result-object v0

    .line 198
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 199
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 201
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 202
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 203
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/narvii/post/DraftInfo;

    if-eqz v2, :cond_3

    .line 204
    iget-object v2, v2, Lcom/narvii/post/DraftInfo;->type:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 205
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public readPost(Ljava/lang/String;Ljava/lang/Class;)Lcom/narvii/post/PostObject;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/narvii/post/PostObject;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 290
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v1, "post"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 291
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_0

    .line 292
    invoke-static {v0}, Lcom/narvii/util/SafeFileOutputStream;->getBakFile(Ljava/io/File;)Ljava/io/File;

    move-result-object p1

    .line 293
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v1

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v0

    .line 297
    :goto_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    cmp-long v2, v0, v3

    if-lez v2, :cond_1

    .line 299
    :try_start_0
    sget-object v0, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v0, p1, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/io/File;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/post/PostObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 301
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to read post from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 305
    :cond_1
    :try_start_1
    invoke-virtual {p2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/narvii/post/PostObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 307
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public savePost(Ljava/lang/String;Lcom/narvii/post/PostObject;)Z
    .locals 6

    .line 313
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/narvii/post/DraftManager;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v1, "post"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 315
    :try_start_0
    invoke-static {v0}, Lcom/narvii/util/Utils;->readDataFromFile(Ljava/io/File;)[B

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 317
    sget-object v1, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v1, v0, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Ljava/io/File;Ljava/lang/Object;)V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    .line 320
    :cond_0
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    array-length v4, v1

    const/4 v5, 0x4

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 321
    sget-object v4, Lcom/narvii/util/JacksonUtils;->DEFAULT_MAPPER:Lcom/fasterxml/jackson/databind/ObjectMapper;

    invoke-virtual {v4, v3, p2}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Ljava/io/OutputStream;Ljava/lang/Object;)V

    .line 322
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 323
    invoke-static {v1, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_1

    .line 324
    invoke-static {v0, p2, v2}, Lcom/narvii/util/Utils;->writeToFile(Ljava/io/File;[BZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fail to save post to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return p1
.end method

.method public setLogCreatedTime(Z)V
    .locals 0

    .line 51
    iput-boolean p1, p0, Lcom/narvii/post/DraftManager;->logCreatedTime:Z

    return-void
.end method
