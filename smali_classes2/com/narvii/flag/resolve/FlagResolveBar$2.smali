.class Lcom/narvii/flag/resolve/FlagResolveBar$2;
.super Ljava/lang/Object;
.source "FlagResolveBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/flag/resolve/FlagResolveBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/flag/resolve/FlagResolveBar;


# direct methods
.method constructor <init>(Lcom/narvii/flag/resolve/FlagResolveBar;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$2;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 171
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_1

    .line 180
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$2;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-static {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->access$200(Lcom/narvii/flag/resolve/FlagResolveBar;)V

    goto :goto_1

    .line 173
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$2;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    iget-object v0, p1, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 177
    invoke-static {p1, v0, v1}, Lcom/narvii/flag/resolve/FlagResolveBar;->access$100(Lcom/narvii/flag/resolve/FlagResolveBar;ILjava/lang/String;)V

    goto :goto_1

    .line 183
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$2;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-static {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->access$300(Lcom/narvii/flag/resolve/FlagResolveBar;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$2;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-static {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->access$400(Lcom/narvii/flag/resolve/FlagResolveBar;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resolved"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 186
    :cond_1
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$2;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-static {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->access$200(Lcom/narvii/flag/resolve/FlagResolveBar;)V

    goto :goto_1

    .line 184
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$2;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    invoke-virtual {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->loadNextFlag()V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f09047a -> :sswitch_2
        0x7f090487 -> :sswitch_1
        0x7f090488 -> :sswitch_0
    .end sparse-switch
.end method
