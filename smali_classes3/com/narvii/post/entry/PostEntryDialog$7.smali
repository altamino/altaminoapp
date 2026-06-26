.class Lcom/narvii/post/entry/PostEntryDialog$7;
.super Ljava/lang/Object;
.source "PostEntryDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/post/entry/PostEntryDialog;->inflateView(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/post/entry/PostEntryDialog;


# direct methods
.method constructor <init>(Lcom/narvii/post/entry/PostEntryDialog;)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$7;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 408
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$7;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    sget-object v0, Lcom/narvii/logging/ActSemantic;->createAmino:Lcom/narvii/logging/ActSemantic;

    invoke-static {p1, v0}, Lcom/narvii/logging/LogEvent;->clickBuilder(Lcom/narvii/app/NVContext;Lcom/narvii/logging/ActSemantic;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    const-string v0, "Community"

    invoke-virtual {p1, v0}, Lcom/narvii/logging/LogEvent$Builder;->area(Ljava/lang/String;)Lcom/narvii/logging/LogEvent$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/logging/LogEvent$Builder;->send()Lcom/narvii/logging/LogEvent;

    .line 409
    new-instance p1, Lcom/narvii/master/MasterHelper;

    iget-object v0, p0, Lcom/narvii/post/entry/PostEntryDialog$7;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    invoke-static {v0}, Lcom/narvii/post/entry/PostEntryDialog;->access$100(Lcom/narvii/post/entry/PostEntryDialog;)Lcom/narvii/app/NVContext;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/master/MasterHelper;-><init>(Lcom/narvii/app/NVContext;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/narvii/master/MasterHelper;->createAmino(Ljava/lang/String;)V

    .line 410
    iget-object p1, p0, Lcom/narvii/post/entry/PostEntryDialog$7;->this$0:Lcom/narvii/post/entry/PostEntryDialog;

    invoke-virtual {p1}, Lcom/narvii/post/entry/PostEntryDialog;->dismiss()V

    return-void
.end method
