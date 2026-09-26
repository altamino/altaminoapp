.class Lcom/narvii/flag/resolve/FlagResolveBar$2;
.super Ljava/lang/Object;
.source "SourceFile"

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

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$2;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 4
    move-result p1

    .line 5
    .line 6
    .line 7
    sparse-switch p1, :sswitch_data_0

    .line 8
    goto :goto_1

    .line 9
    .line 10
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$2;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 11
    .line 12
    .line 13
    invoke-static {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->i(Lcom/narvii/flag/resolve/FlagResolveBar;)V

    .line 14
    goto :goto_1

    .line 15
    .line 16
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$2;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 17
    .line 18
    iget-object v0, p1, Lcom/narvii/flag/resolve/FlagResolveBar;->mFlag:Lcom/narvii/flag/model/Flag;

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    return-void

    .line 22
    :cond_0
    const/4 v0, 0x0

    .line 23
    const/4 v1, 0x0

    .line 24
    .line 25
    .line 26
    invoke-static {p1, v0, v1}, Lcom/narvii/flag/resolve/FlagResolveBar;->l(Lcom/narvii/flag/resolve/FlagResolveBar;ILjava/lang/String;)V

    .line 27
    goto :goto_1

    .line 28
    .line 29
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$2;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 30
    .line 31
    .line 32
    invoke-static {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->e(Lcom/narvii/flag/resolve/FlagResolveBar;)Z

    .line 33
    move-result p1

    .line 34
    .line 35
    if-eqz p1, :cond_2

    .line 36
    .line 37
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$2;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 38
    .line 39
    .line 40
    invoke-static {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->d(Lcom/narvii/flag/resolve/FlagResolveBar;)Ljava/lang/String;

    .line 41
    move-result-object p1

    .line 42
    .line 43
    const-string v0, "resolved"

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result p1

    .line 48
    .line 49
    if-eqz p1, :cond_1

    .line 50
    goto :goto_0

    .line 51
    .line 52
    :cond_1
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$2;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 53
    .line 54
    .line 55
    invoke-static {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->i(Lcom/narvii/flag/resolve/FlagResolveBar;)V

    .line 56
    goto :goto_1

    .line 57
    .line 58
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/narvii/flag/resolve/FlagResolveBar$2;->this$0:Lcom/narvii/flag/resolve/FlagResolveBar;

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/narvii/flag/resolve/FlagResolveBar;->loadNextFlag()V

    .line 62
    :goto_1
    return-void

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    :sswitch_data_0
    .sparse-switch
        0x7f0a05ba -> :sswitch_2
        0x7f0a05c7 -> :sswitch_1
        0x7f0a05c8 -> :sswitch_0
    .end sparse-switch
.end method
