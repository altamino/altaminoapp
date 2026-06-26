.class Lcom/narvii/optionmenu/OptionMenuFragment$2;
.super Ljava/lang/Object;
.source "OptionMenuFragment.java"

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

    .line 139
    iput-object p1, p0, Lcom/narvii/optionmenu/OptionMenuFragment$2;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2

    .line 142
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x0

    sparse-switch p1, :sswitch_data_0

    return v0

    .line 152
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/optionmenu/OptionMenuFragment$2;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-static {p1}, Lcom/narvii/optionmenu/OptionMenuFragment;->access$300(Lcom/narvii/optionmenu/OptionMenuFragment;)Lcom/narvii/model/Media;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/narvii/optionmenu/OptionMenuFragment;->access$400(Lcom/narvii/optionmenu/OptionMenuFragment;Lcom/narvii/model/Media;)V

    return v0

    .line 171
    :sswitch_1
    iget-object p1, p0, Lcom/narvii/optionmenu/OptionMenuFragment$2;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-static {p1}, Lcom/narvii/optionmenu/OptionMenuFragment;->access$800(Lcom/narvii/optionmenu/OptionMenuFragment;)V

    return v0

    .line 167
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/optionmenu/OptionMenuFragment$2;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-static {p1}, Lcom/narvii/optionmenu/OptionMenuFragment;->access$700(Lcom/narvii/optionmenu/OptionMenuFragment;)V

    return v0

    .line 144
    :sswitch_3
    iget-object p1, p0, Lcom/narvii/optionmenu/OptionMenuFragment$2;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-virtual {p1}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object p1

    iget-object v1, p0, Lcom/narvii/optionmenu/OptionMenuFragment$2;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-static {v1}, Lcom/narvii/optionmenu/OptionMenuFragment;->access$100(Lcom/narvii/optionmenu/OptionMenuFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/narvii/util/YoutubeUtils;->openYoutubeVideo(Lcom/narvii/app/NVContext;Ljava/lang/String;)V

    return v0

    .line 148
    :sswitch_4
    iget-object p1, p0, Lcom/narvii/optionmenu/OptionMenuFragment$2;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-static {p1}, Lcom/narvii/optionmenu/OptionMenuFragment;->access$200(Lcom/narvii/optionmenu/OptionMenuFragment;)V

    return v0

    .line 156
    :sswitch_5
    iget-object p1, p0, Lcom/narvii/optionmenu/OptionMenuFragment$2;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-static {p1}, Lcom/narvii/optionmenu/OptionMenuFragment;->access$500(Lcom/narvii/optionmenu/OptionMenuFragment;)Lcom/narvii/model/NVObject;

    move-result-object v1

    check-cast v1, Lcom/narvii/model/ChatMessage;

    invoke-static {p1, v1}, Lcom/narvii/optionmenu/OptionMenuFragment;->access$600(Lcom/narvii/optionmenu/OptionMenuFragment;Lcom/narvii/model/ChatMessage;)V

    return v0

    .line 160
    :sswitch_6
    new-instance p1, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    iget-object v1, p0, Lcom/narvii/optionmenu/OptionMenuFragment$2;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    invoke-virtual {v1}, Lcom/narvii/app/NVFragment;->getParentContext()Lcom/narvii/app/NVContext;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;-><init>(Lcom/narvii/app/NVContext;)V

    iget-object v1, p0, Lcom/narvii/optionmenu/OptionMenuFragment$2;->this$0:Lcom/narvii/optionmenu/OptionMenuFragment;

    .line 161
    invoke-static {v1}, Lcom/narvii/optionmenu/OptionMenuFragment;->access$500(Lcom/narvii/optionmenu/OptionMenuFragment;)Lcom/narvii/model/NVObject;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->nvObject(Lcom/narvii/model/NVObject;)Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;

    move-result-object p1

    .line 162
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog$Builder;->build()Lcom/narvii/poweruser/AdvancedOptionDialog;

    move-result-object p1

    .line 163
    invoke-virtual {p1}, Lcom/narvii/poweruser/AdvancedOptionDialog;->show()V

    return v0

    :sswitch_data_0
    .sparse-switch
        0x7f0f0094 -> :sswitch_6
        0x7f0f0348 -> :sswitch_5
        0x7f0f06d5 -> :sswitch_4
        0x7f0f0cfe -> :sswitch_3
        0x7f0f0f2a -> :sswitch_2
        0x7f0f0fa2 -> :sswitch_1
        0x7f0f0fdd -> :sswitch_0
    .end sparse-switch
.end method
