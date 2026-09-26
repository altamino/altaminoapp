.class Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    .line 2
    iput-object p1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter$1;->this$1:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;

    .line 3
    .line 4
    iput-object p2, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter$1;->val$user:Lcom/narvii/model/User;

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    .line 2
    iget-object p1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter$1;->this$1:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;

    .line 3
    .line 4
    iget-object v0, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter$1;->val$user:Lcom/narvii/model/User;

    .line 5
    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;->access$300(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;Lcom/narvii/model/User;)V

    .line 8
    .line 9
    iget-object p1, p0, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter$1;->this$1:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment$OrganizerPickerAdapter;->this$0:Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;

    .line 12
    const/4 v0, 0x1

    .line 13
    .line 14
    .line 15
    invoke-static {p1, v0}, Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;->x(Lcom/narvii/chat/organizer/ChatOrganizerPickerFragment;Z)V

    .line 16
    return-void
.end method
