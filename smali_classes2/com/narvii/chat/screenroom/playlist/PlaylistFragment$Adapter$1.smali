.class Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;
.super Ljava/lang/Object;
.source "PlaylistFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

.field final synthetic val$item:Ljava/lang/Object;

.field final synthetic val$ops:Ljava/util/ArrayList;

.field final synthetic val$playListItem:Lcom/narvii/model/PlayListItem;


# direct methods
.method constructor <init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;Ljava/util/ArrayList;Lcom/narvii/model/PlayListItem;Ljava/lang/Object;)V
    .locals 0

    .line 862
    iput-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    iput-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->val$ops:Ljava/util/ArrayList;

    iput-object p3, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->val$playListItem:Lcom/narvii/model/PlayListItem;

    iput-object p4, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->val$item:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 865
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->val$ops:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 p2, 0x0

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_1

    .line 867
    :sswitch_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->val$playListItem:Lcom/narvii/model/PlayListItem;

    invoke-virtual {p1}, Lcom/narvii/model/PlayListItem;->isLocalMedia()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 868
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/narvii/chat/ChatActivity;

    if-eqz p1, :cond_0

    .line 869
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-virtual {p1}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/narvii/chat/ChatActivity;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/ChatActivity;->setAllowFloatingWindow(Z)V

    .line 871
    :cond_0
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    iget-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->val$playListItem:Lcom/narvii/model/PlayListItem;

    invoke-static {p1, p2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$1602(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;Lcom/narvii/model/PlayListItem;)Lcom/narvii/model/PlayListItem;

    .line 872
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {p1}, Lcom/narvii/permisson/NVPermission;->builder(Landroid/support/v4/app/Fragment;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    iget-object p2, p2, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    .line 873
    invoke-virtual {p1, p2}, Lcom/narvii/permisson/NVPermission$Builder;->permissionListener(Lcom/narvii/permisson/PermissionListener;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    .line 874
    invoke-virtual {p1, p2}, Lcom/narvii/permisson/NVPermission$Builder;->permission(Ljava/lang/String;)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    const/16 p2, 0x133

    .line 875
    invoke-virtual {p1, p2}, Lcom/narvii/permisson/NVPermission$Builder;->requestCode(I)Lcom/narvii/permisson/NVPermission$Builder;

    move-result-object p1

    .line 876
    invoke-virtual {p1}, Lcom/narvii/permisson/NVPermission$Builder;->request()V

    goto/16 :goto_1

    .line 878
    :cond_1
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$1300(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/ScreenRoomService;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->val$playListItem:Lcom/narvii/model/PlayListItem;

    invoke-virtual {p1, p2}, Lcom/narvii/chat/screenroom/ScreenRoomService;->playItem(Lcom/narvii/model/PlayListItem;)V

    .line 879
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$100(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/widget/SwipeableLayout;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 880
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$100(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/widget/SwipeableLayout;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/narvii/widget/SwipeableLayout;->dismiss(I)V

    goto/16 :goto_1

    .line 885
    :sswitch_1
    new-instance p1, Lcom/narvii/util/dialog/AlertDialog;

    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    invoke-virtual {v0}, Lcom/narvii/list/NVAdapter;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/narvii/util/dialog/AlertDialog;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0f115d

    .line 886
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setTitle(I)V

    .line 887
    invoke-virtual {p1}, Lcom/narvii/util/dialog/AlertDialog;->setEditTextBlackCursor()Landroid/widget/EditText;

    move-result-object v0

    .line 888
    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->val$playListItem:Lcom/narvii/model/PlayListItem;

    iget-object v1, v1, Lcom/narvii/model/PlayListItem;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    const/high16 v1, 0x1040000

    .line 889
    new-instance v2, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1$1;

    invoke-direct {v2, p0, v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1$1;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;Landroid/widget/EditText;)V

    invoke-virtual {p1, v1, p2, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    const p2, 0x7f0f03aa

    const/4 v1, 0x4

    .line 895
    new-instance v2, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1$2;

    invoke-direct {v2, p0, p1, v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1$2;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;Lcom/narvii/util/dialog/AlertDialog;Landroid/widget/EditText;)V

    invoke-virtual {p1, p2, v1, v2}, Lcom/narvii/util/dialog/AlertDialog;->addButton(IILandroid/view/View$OnClickListener;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 905
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 906
    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    invoke-virtual {v1, p2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->enableView(Landroid/widget/TextView;)V

    goto :goto_0

    .line 908
    :cond_2
    iget-object v1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    invoke-virtual {v1, p2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->disableView(Landroid/widget/TextView;)V

    .line 911
    :goto_0
    new-instance v1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1$3;

    invoke-direct {v1, p0, p2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1$3;-><init>(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 930
    invoke-virtual {p1}, Lcom/narvii/app/NVDialog;->show()V

    goto :goto_1

    .line 940
    :sswitch_2
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$300(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    move-result-object p1

    iget-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->val$playListItem:Lcom/narvii/model/PlayListItem;

    invoke-virtual {p1, p2}, Lcom/narvii/list/NVArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 941
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    iget-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->val$playListItem:Lcom/narvii/model/PlayListItem;

    invoke-static {p1, p2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$1900(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;Lcom/narvii/model/PlayListItem;)V

    .line 942
    iget-object p1, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    iget-object p1, p1, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {p1}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$500(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)V

    goto :goto_1

    .line 933
    :sswitch_3
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 934
    iget-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->val$item:Ljava/lang/Object;

    invoke-static {p2}, Lcom/narvii/util/JacksonUtils;->writeAsString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "item"

    invoke-virtual {p1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "type"

    const-string v0, "cover"

    .line 935
    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 936
    iget-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    iget-object p2, p2, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {p2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$1700(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Ljava/io/File;

    move-result-object p2

    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 937
    iget-object p2, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    iget-object p2, p2, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {p2}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$1800(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Lcom/narvii/media/MediaPickerFragment;

    move-result-object p2

    iget-object v0, p0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter$1;->this$1:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;

    iget-object v0, v0, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment$Adapter;->this$0:Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;

    invoke-static {v0}, Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;->access$1700(Lcom/narvii/chat/screenroom/playlist/PlaylistFragment;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p2, v0, p1, v1}, Lcom/narvii/media/MediaPickerFragment;->pickMedia(Ljava/io/File;Landroid/os/Bundle;I)V

    :cond_3
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        0x7f0f01c8 -> :sswitch_3
        0x7f0f0348 -> :sswitch_2
        0x7f0f0ed3 -> :sswitch_1
        0x7f0f115e -> :sswitch_0
    .end sparse-switch
.end method
