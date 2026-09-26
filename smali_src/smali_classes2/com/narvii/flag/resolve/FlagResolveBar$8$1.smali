.class Lcom/narvii/flag/resolve/FlagResolveBar$8$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/narvii/util/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/flag/resolve/FlagResolveBar$8;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/narvii/util/Callback<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/flag/resolve/FlagResolveBar$8;


# direct methods
.method constructor <init>(Lcom/narvii/flag/resolve/FlagResolveBar$8;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$8$1;->this$1:Lcom/narvii/flag/resolve/FlagResolveBar$8;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public call(Ljava/lang/Integer;)V
    .locals 1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$8$1;->this$1:Lcom/narvii/flag/resolve/FlagResolveBar$8;

    .line 3
    iget-object p1, p1, Lcom/narvii/flag/resolve/FlagResolveBar$8;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-static {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->n(Lcom/narvii/flag/resolve/FlagResolveBar;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$8$1;->this$1:Lcom/narvii/flag/resolve/FlagResolveBar$8;

    .line 4
    iget-object p1, p1, Lcom/narvii/flag/resolve/FlagResolveBar$8;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    iget-object v0, p1, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    iget-object v0, v0, Lcom/narvii/flag/model/Flag;->objectUser:Lcom/narvii/model/User;

    invoke-static {p1, v0}, Lcom/narvii/flag/resolve/FlagResolveBar;->j(Lcom/narvii/flag/resolve/FlagResolveBar;Lcom/narvii/model/NVObject;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/narvii/flag/resolve/FlagResolveBar$8$1;->call(Ljava/lang/Integer;)V

    return-void
.end method
