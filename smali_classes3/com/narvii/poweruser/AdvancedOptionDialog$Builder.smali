.class public Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;
.super Ljava/lang/Object;
.source "AdvancedOptionDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/poweruser/AdvancedOptionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field optionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;


# direct methods
.method public constructor <init>(Lcom/narvii/app/NVContext;)V
    .locals 2

    .line 1308
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1309
    new-instance v0, Lcom/narvii/poweruser/AdvancedOptionDialog;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog;-><init>(Lcom/narvii/app/NVContext;Lcom/narvii/poweruser/AdvancedOptionDialog$1;)V

    iput-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->optionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    return-void
.end method


# virtual methods
.method public addItem(ILandroid/view/View$OnClickListener;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;
    .locals 1

    .line 1338
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->optionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-virtual {v0, p1, p2}, Lcom/narvii/poweruser/AdvancedOptionDialog;->addItem(ILandroid/view/View$OnClickListener;)V

    return-object p0
.end method

.method public attachBlogCateLog(Ljava/util/List;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/narvii/model/BlogCategory;",
            ">;)",
            "Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;"
        }
    .end annotation

    .line 1333
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->optionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$2502(Lcom/narvii/poweruser/AdvancedOptionDialog;Ljava/util/List;)Ljava/util/List;

    return-object p0
.end method

.method public build()Lcom/narvii/poweruser/AdvancedOptionDialog;
    .locals 1

    .line 1344
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->optionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    return-object v0
.end method

.method public nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;
    .locals 1

    .line 1313
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->optionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    invoke-static {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$102(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/NVObject;)Lcom/narvii/model/NVObject;

    .line 1314
    instance-of v0, p1, Lcom/narvii/model/Blog;

    if-eqz v0, :cond_0

    .line 1315
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->optionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    check-cast p1, Lcom/narvii/model/Feed;

    invoke-static {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$2700(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/Feed;)V

    goto :goto_0

    .line 1316
    :cond_0
    instance-of v0, p1, Lcom/narvii/model/Item;

    if-eqz v0, :cond_1

    .line 1317
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->optionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    check-cast p1, Lcom/narvii/model/Feed;

    invoke-static {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$2700(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/Feed;)V

    goto :goto_0

    .line 1318
    :cond_1
    instance-of v0, p1, Lcom/narvii/model/Comment;

    if-eqz v0, :cond_2

    .line 1319
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->optionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    check-cast p1, Lcom/narvii/model/Comment;

    invoke-static {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$2800(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/Comment;)V

    goto :goto_0

    .line 1320
    :cond_2
    instance-of v0, p1, Lcom/narvii/model/ChatThread;

    if-eqz v0, :cond_3

    .line 1321
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->optionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    check-cast p1, Lcom/narvii/model/ChatThread;

    invoke-static {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$2900(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/ChatThread;)V

    goto :goto_0

    .line 1322
    :cond_3
    instance-of v0, p1, Lcom/narvii/model/ChatMessage;

    if-eqz v0, :cond_4

    .line 1323
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->optionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    check-cast p1, Lcom/narvii/model/ChatMessage;

    invoke-static {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$3000(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/ChatMessage;)V

    goto :goto_0

    .line 1324
    :cond_4
    instance-of v0, p1, Lcom/narvii/model/User;

    if-eqz v0, :cond_5

    .line 1325
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->optionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    check-cast p1, Lcom/narvii/model/User;

    invoke-static {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$3100(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/User;)V

    goto :goto_0

    .line 1326
    :cond_5
    instance-of v0, p1, Lcom/narvii/model/SharedFile;

    if-eqz v0, :cond_6

    .line 1327
    iget-object v0, p0, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->optionDialog:Lcom/narvii/poweruser/AdvancedOptionDialog;

    check-cast p1, Lcom/narvii/model/SharedFile;

    invoke-static {v0, p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->access$3200(Lcom/narvii/poweruser/AdvancedOptionDialog;Lcom/narvii/model/SharedFile;)V

    :cond_6
    :goto_0
    return-object p0
.end method
