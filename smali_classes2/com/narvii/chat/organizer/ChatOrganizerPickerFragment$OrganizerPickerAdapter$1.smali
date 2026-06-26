.class Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter$1;
.super Ljava/lang/Object;
.source "ChatOrganizerPickerFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;->onItemClick(Landroid/widget/ListAdapter;ILjava/lang/Object;Landroid/view/View;Landroid/view/View;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;

.field final synthetic val$user:Lcom/narvii/model/User;


# direct methods
.method constructor <init>(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;Lcom/narvii/model/User;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter$1;->this$1:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;

    iput-object p2, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter$1;->val$user:Lcom/narvii/model/User;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 179
    iget-object p1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter$1;->this$1:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;

    iget-object v0, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter$1;->val$user:Lcom/narvii/model/User;

    invoke-static {p1, v0}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;->access$700(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;Lcom/narvii/model/User;)V

    .line 180
    iget-object p1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter$1;->this$1:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;

    iget-object p1, p1, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;->this$0:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->access$502(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;Z)Z

    return-void
.end method
