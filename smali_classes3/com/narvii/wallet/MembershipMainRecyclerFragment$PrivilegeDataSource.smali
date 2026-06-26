.class Lcom/narvii/wallet/MembershipMainRecyclerFragment$PrivilegeDataSource;
.super Lcom/narvii/paging/source/SinglePageDataSource;
.source "MembershipMainRecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/narvii/wallet/MembershipMainRecyclerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrivilegeDataSource"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/narvii/paging/source/SinglePageDataSource<",
        "Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;",
        ">;"
    }
.end annotation


# instance fields
.field private privilegesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;


# direct methods
.method public constructor <init>(Lcom/narvii/wallet/MembershipMainRecyclerFragment;Lcom/narvii/app/NVContext;)V
    .locals 3

    .line 582
    iput-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$PrivilegeDataSource;->this$0:Lcom/narvii/wallet/MembershipMainRecyclerFragment;

    .line 583
    invoke-direct {p0, p2}, Lcom/narvii/paging/source/SinglePageDataSource;-><init>(Lcom/narvii/app/NVContext;)V

    .line 580
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$PrivilegeDataSource;->privilegesList:Ljava/util/List;

    .line 584
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$PrivilegeDataSource;->privilegesList:Ljava/util/List;

    new-instance p2, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;

    const v0, 0x7f0805df

    const v1, 0x7f0f0b74

    const v2, 0x7f0f0b6b

    invoke-direct {p2, v0, v1, v2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;-><init>(III)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 585
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$PrivilegeDataSource;->privilegesList:Ljava/util/List;

    new-instance p2, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;

    const v0, 0x7f0805dd

    const v1, 0x7f0f0b72

    const v2, 0x7f0f0b69

    invoke-direct {p2, v0, v1, v2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;-><init>(III)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 586
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$PrivilegeDataSource;->privilegesList:Ljava/util/List;

    new-instance p2, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;

    const v0, 0x7f0805e2

    const v1, 0x7f0f0b78

    const v2, 0x7f0f0b6f

    invoke-direct {p2, v0, v1, v2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;-><init>(III)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 587
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$PrivilegeDataSource;->privilegesList:Ljava/util/List;

    new-instance p2, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;

    const v0, 0x7f0805de

    const v1, 0x7f0f0b73

    const v2, 0x7f0f0b6a

    invoke-direct {p2, v0, v1, v2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;-><init>(III)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 588
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$PrivilegeDataSource;->privilegesList:Ljava/util/List;

    new-instance p2, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;

    const v0, 0x7f0805e0

    const v1, 0x7f0f0b75

    const v2, 0x7f0f0b6c

    invoke-direct {p2, v0, v1, v2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;-><init>(III)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 589
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$PrivilegeDataSource;->privilegesList:Ljava/util/List;

    new-instance p2, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;

    const v0, 0x7f0805e1

    const v1, 0x7f0f0b76

    const v2, 0x7f0f0b6d

    invoke-direct {p2, v0, v1, v2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;-><init>(III)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 590
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$PrivilegeDataSource;->privilegesList:Ljava/util/List;

    new-instance p2, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;

    const v0, 0x7f0805e4

    const v1, 0x7f0f0b7a

    const v2, 0x7f0f0b71

    invoke-direct {p2, v0, v1, v2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;-><init>(III)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 591
    iget-object p1, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$PrivilegeDataSource;->privilegesList:Ljava/util/List;

    new-instance p2, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;

    const v0, 0x7f0805e3

    const v1, 0x7f0f0b79

    const v2, 0x7f0f0b70

    invoke-direct {p2, v0, v1, v2}, Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;-><init>(III)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public pageData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/narvii/wallet/MembershipMainRecyclerFragment$Privileges;",
            ">;"
        }
    .end annotation

    .line 597
    iget-object v0, p0, Lcom/narvii/wallet/MembershipMainRecyclerFragment$PrivilegeDataSource;->privilegesList:Ljava/util/List;

    return-object v0
.end method
