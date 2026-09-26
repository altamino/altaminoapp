.class Lcom/narvii/optionmenu/OptionMenuFragment$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/optionmenu/OptionMenuFragment;->setPopupMenu()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/narvii/optionmenu/OptionMenuFragment;


# direct methods
.method constructor <init>(Lcom/narvii/optionmenu/OptionMenuFragment;)V
    .locals 0

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/optionmenu/OptionMenuFragment$2;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    .line 3
    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    .line 2
    .line 3
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    .line 4
    move-result p1

    .line 5
    const/4 v0, 0x0

    .line 6
    .line 7
    .line 8
    sparse-switch p1, :sswitch_data_0

    .line 9
    return v0

    .line 10
    .line 11
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/optionmenu/OptionMenuFragment$2;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    .line 12
    .line 13
    .line 14
    invoke-static {p1}, Lcom/narvii/optionmenu/OptionMenuFragment;->n(Lcom/narvii/optionmenu/OptionMenuFragment;)Lcom/narvii/model/Media;

    .line 15
    move-result-object v1

    .line 16
    .line 17
    .line 18
    invoke-static {p1, v1}, Lcom/narvii/optionmenu/OptionMenuFragment;->v(Lcom/narvii/optionmenu/OptionMenuFragment;Lcom/narvii/model/Media;)V

    .line 19
    return v0

    .line 20
    .line 21
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/optionmenu/OptionMenuFragment$2;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    .line 22
    .line 23
    .line 24
    invoke-static {p1}, Lcom/narvii/optionmenu/OptionMenuFragment;->u(Lcom/narvii/optionmenu/OptionMenuFragment;)V

    .line 25
    return v0

    .line 26
    .line 27
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/optionmenu/OptionMenuFragment$2;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/narvii/optionmenu/OptionMenuFragment;->s(Lcom/narvii/optionmenu/OptionMenuFragment;)V

    .line 31
    return v0

    .line 32
    .line 33
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/optionmenu/OptionMenuFragment$2;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    .line 37
    move-result-object p1

    .line 38
    .line 39
    iget-object v1, p0, Lcom/narvii/optionmenu/OptionMenuFragment$2;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    .line 40
    .line 41
    .line 42
    invoke-static {v1}, Lcom/narvii/optionmenu/OptionMenuFragment;->p(Lcom/narvii/optionmenu/OptionMenuFragment;)Ljava/lang/String;

    .line 43
    move-result-object v1

    .line 44
    .line 45
    .line 46
    invoke-static {p1, v1}, Lcom/narvii/util/YoutubeUtils;->openYoutubeVideo(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    .line 47
    return v0

    .line 48
    .line 49
    :sswitch_4
    iget-object p1, p0, Lcom/narvii/optionmenu/OptionMenuFragment$2;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/narvii/optionmenu/OptionMenuFragment;->r(Lcom/narvii/optionmenu/OptionMenuFragment;)V

    .line 53
    return v0

    .line 54
    .line 55
    :sswitch_5
    iget-object p1, p0, Lcom/narvii/optionmenu/OptionMenuFragment$2;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    .line 56
    .line 57
    .line 58
    invoke-static {p1}, Lcom/narvii/optionmenu/OptionMenuFragment;->o(Lcom/narvii/optionmenu/OptionMenuFragment;)Lcom/narvii/model/NVObject;

    .line 59
    move-result-object v1

    .line 60
    .line 61
    check-cast v1, Lcom/narvii/model/ChatMessage;

    .line 62
    .line 63
    .line 64
    invoke-static {p1, v1}, Lcom/narvii/optionmenu/OptionMenuFragment;->q(Lcom/narvii/optionmenu/OptionMenuFragment;Lcom/narvii/model/ChatMessage;)V

    .line 65
    return v0

    .line 66
    .line 67
    :sswitch_6
    new-instance p1, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 68
    .line 69
    iget-object v1, p0, Lcom/narvii/optionmenu/OptionMenuFragment$2;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    .line 73
    move-result-object v1

    .line 74
    .line 75
    .line 76
    invoke-direct {p1, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    .line 77
    .line 78
    iget-object v1, p0, Lcom/narvii/optionmenu/OptionMenuFragment$2;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    .line 79
    .line 80
    .line 81
    invoke-static {v1}, Lcom/narvii/optionmenu/OptionMenuFragment;->o(Lcom/narvii/optionmenu/OptionMenuFragment;)Lcom/narvii/model/NVObject;

    .line 82
    move-result-object v1

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    .line 86
    move-result-object p1

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    .line 90
    move-result-object p1

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    .line 94
    return v0

    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    :sswitch_data_0
    .sparse-switch
        0x7f12009d -> :sswitch_6
        0x7f1203a0 -> :sswitch_5
        0x7f120781 -> :sswitch_4
        0x7f120e26 -> :sswitch_3
        0x7f12103c -> :sswitch_2
        0x7f1210ad -> :sswitch_1
        0x7f1210e8 -> :sswitch_0
    .end sparse-switch
.end method
