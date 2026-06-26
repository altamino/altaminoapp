.class Lcom/narvii/flag/resolve/FlagResolveBar$7;
.super Ljava/lang/Object;
.source "FlagResolveBar.java"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/resolve/FlagResolveBar;->sendResolveRequest(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Lcom/narvii/model/api/ApiResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/resolve/FlagResolveBar;


# direct methods
.method constructor <init>(Lcom/narvii/flag/resolve/FlagResolveBar;)V
    .locals 0

    .line 309
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$7;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    .line 312
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$7;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-static {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->access$000(Lcom/narvii/flag/resolve/FlagResolveBar;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f0f1085

    .line 313
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$7;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    iget-object v1, v1, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    iget v1, v1, Lcom/narvii/flag/model/Flag;->objectType:I

    if-nez v1, :cond_0

    const v0, 0x7f0f1086

    .line 315
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$7;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    iget-object p1, p1, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/flag/model/Flag;->getBlogType()I

    move-result p1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    .line 318
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$7;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    .line 321
    :cond_1
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$7;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-static {p1, v0}, Lcom/narvii/flag/resolve/FlagResolveBar;->access$700(Lcom/narvii/flag/resolve/FlagResolveBar;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 309
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/flag/resolve/FlagResolveBar$7;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
