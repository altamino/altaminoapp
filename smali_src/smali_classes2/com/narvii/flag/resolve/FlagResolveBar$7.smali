.class Lcom/narvii/flag/resolve/FlagResolveBar$7;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$7;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Lcom/narvii/model/api/ApiResponse;)V
    .locals 2

    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$7;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 2
    invoke-static {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->a(Lcom/narvii/flag/resolve/FlagResolveBar;)Lcom/narvii/app/NVContext;

    move-result-object p1

    invoke-interface {p1}, Lcom/narvii/app/NVContext;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f121186

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$7;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 4
    iget-object v1, v1, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    iget v1, v1, Lcom/narvii/flag/model/Flag;->objectType:I

    if-nez v1, :cond_0

    const v0, 0x7f121187

    .line 5
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$7;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 6
    iget-object p1, p1, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/narvii/flag/model/Flag;->getBlogType()I

    move-result p1

    const/16 v1, 0x8

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$7;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/narvii/util/NVToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/narvii/util/NVToast;

    move-result-object p1

    invoke-virtual {p1}, Lcom/narvii/util/NVToast;->show()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$7;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 8
    invoke-static {p1, v0}, Lcom/narvii/flag/resolve/FlagResolveBar;->o(Lcom/narvii/flag/resolve/FlagResolveBar;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/narvii/model/api/ApiResponse;

    invoke-virtual {p0, p1}, Lcom/narvii/flag/resolve/FlagResolveBar$7;->call(Lcom/narvii/model/api/ApiResponse;)V

    return-void
.end method
