.class Lcom/narvii/account/AccountService$10;
.super Ljava/lang/Thread;
.source "AccountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/account/AccountService;->crossAppsWriteKeychain(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/account/AccountService;

.field final synthetic val$email:Ljava/lang/String;

.field final synthetic val$secret:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/narvii/account/AccountService;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1086
    iput-object p1, p0, Lcom/narvii/account/AccountService$10;->this$0:Lcom/narvii/account/AccountService;

    iput-object p2, p0, Lcom/narvii/account/AccountService$10;->val$email:Ljava/lang/String;

    iput-object p3, p0, Lcom/narvii/account/AccountService$10;->val$secret:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    move-object/from16 v1, p0

    .line 1090
    iget-object v0, v1, Lcom/narvii/account/AccountService$10;->val$email:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "cross-apps delete"

    goto :goto_0

    .line 1093
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cross-apps update "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/narvii/account/AccountService$10;->val$email:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    move-object v2, v0

    .line 1096
    iget-object v0, v1, Lcom/narvii/account/AccountService$10;->this$0:Lcom/narvii/account/AccountService;

    invoke-static {v0}, Lcom/narvii/account/AccountService;->access$000(Lcom/narvii/account/AccountService;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 1097
    new-instance v4, Lcom/narvii/util/PackageUtils;

    iget-object v0, v1, Lcom/narvii/account/AccountService$10;->this$0:Lcom/narvii/account/AccountService;

    invoke-static {v0}, Lcom/narvii/account/AccountService;->access$000(Lcom/narvii/account/AccountService;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/narvii/util/PackageUtils;-><init>(Landroid/content/Context;)V

    .line 1098
    iget-object v0, v1, Lcom/narvii/account/AccountService$10;->this$0:Lcom/narvii/account/AccountService;

    invoke-static {v0}, Lcom/narvii/account/AccountService;->access$000(Lcom/narvii/account/AccountService;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 1099
    invoke-virtual {v4}, Lcom/narvii/util/PackageUtils;->listAminoPackages()[Lcom/narvii/util/PackageUtils$AminoPackage;

    move-result-object v6

    .line 1104
    array-length v7, v6

    const/4 v8, 0x0

    move-object v0, v8

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ge v10, v7, :cond_8

    aget-object v15, v6, v10

    .line 1105
    iget-object v14, v15, Lcom/narvii/util/PackageUtils$AminoPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    goto :goto_2

    .line 1109
    :cond_1
    iget-object v14, v15, Lcom/narvii/util/PackageUtils$AminoPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v14}, Lcom/narvii/util/PackageUtils;->verifyPackageSignature(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_2

    .line 1110
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "package signature mismatch: "

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v15, Lcom/narvii/util/PackageUtils$AminoPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/narvii/util/Log;->w(Ljava/lang/String;)V

    :goto_2
    move-object/from16 v17, v4

    move-object v4, v8

    goto/16 :goto_9

    .line 1115
    :cond_2
    :try_start_0
    new-instance v9, Ljava/lang/StringBuilder;

    const/16 v14, 0x2e

    invoke-direct {v9, v14}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v14, "content://"

    .line 1116
    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Lcom/narvii/util/PackageUtils;->getKeychainAuthorities(Lcom/narvii/util/PackageUtils$AminoPackage;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "/keychain"

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1117
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 1118
    iget-object v14, v1, Lcom/narvii/account/AccountService$10;->val$email:Ljava/lang/String;

    if-nez v14, :cond_4

    .line 1119
    invoke-virtual {v3, v9, v8, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v9

    if-lez v9, :cond_3

    const/16 v16, 0x1

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    :goto_3
    move-object/from16 v17, v4

    move-object v4, v8

    :goto_4
    move/from16 v9, v16

    goto :goto_5

    .line 1121
    :cond_4
    new-instance v14, Landroid/content/ContentValues;

    invoke-direct {v14}, Landroid/content/ContentValues;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v8, "EMAIL"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    move-object/from16 v17, v4

    .line 1122
    :try_start_2
    iget-object v4, v1, Lcom/narvii/account/AccountService$10;->val$email:Ljava/lang/String;

    invoke-virtual {v14, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "SECRET"

    .line 1123
    iget-object v8, v1, Lcom/narvii/account/AccountService$10;->val$secret:Ljava/lang/String;

    invoke-virtual {v14, v4, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v4, 0x0

    .line 1124
    :try_start_3
    invoke-virtual {v3, v9, v14, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v8
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    if-lez v8, :cond_5

    const/16 v16, 0x1

    goto :goto_4

    :cond_5
    const/16 v16, 0x0

    goto :goto_4

    :goto_5
    if-eqz v9, :cond_6

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    move-object/from16 v17, v4

    :goto_6
    const/4 v4, 0x0

    goto :goto_7

    :catch_3
    move-exception v0

    move-object/from16 v17, v4

    move-object v4, v8

    :goto_7
    add-int/lit8 v13, v13, 0x1

    const/4 v9, 0x0

    :goto_8
    if-eqz v9, :cond_7

    .line 1136
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " succeed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v15, Lcom/narvii/util/PackageUtils$AminoPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/narvii/util/Log;->i(Ljava/lang/String;)V

    goto :goto_9

    .line 1138
    :cond_7
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " failed "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v15, Lcom/narvii/util/PackageUtils$AminoPackage;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v0}, Lcom/narvii/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9
    add-int/lit8 v10, v10, 0x1

    move-object v8, v4

    move-object/from16 v4, v17

    goto/16 :goto_1

    :cond_8
    move-object v4, v8

    if-eqz v0, :cond_9

    .line 1144
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    move-object v4, v8

    .line 1146
    :cond_9
    iget-object v0, v1, Lcom/narvii/account/AccountService$10;->this$0:Lcom/narvii/account/AccountService;

    invoke-static {v0}, Lcom/narvii/account/AccountService;->access$000(Lcom/narvii/account/AccountService;)Lcom/narvii/app/NVContext;

    move-result-object v0

    const-string v2, "logging"

    invoke-interface {v0, v2}, Lcom/narvii/app/NVContext;->getService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/narvii/util/logging/LoggingService;

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "method"

    const/4 v5, 0x0

    aput-object v3, v2, v5

    const-string/jumbo v3, "write"

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v5, "success"

    aput-object v5, v2, v3

    const/4 v3, 0x3

    .line 1147
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x4

    const-string v5, "fails"

    aput-object v5, v2, v3

    const/4 v3, 0x5

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x6

    const-string v5, "errors"

    aput-object v5, v2, v3

    const/4 v3, 0x7

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/16 v3, 0x8

    const-string v5, "message"

    aput-object v5, v2, v3

    const/16 v3, 0x9

    aput-object v4, v2, v3

    const-string v3, "AndroidKeychain"

    invoke-interface {v0, v3, v2}, Lcom/narvii/util/logging/LoggingService;->logEvent(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
