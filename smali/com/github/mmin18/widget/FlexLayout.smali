.class public Lcom/github/mmin18/widget/FlexLayout;
.super Landroid/view/ViewGroup;
.source "FlexLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mmin18/widget/FlexLayout$RPN;,
        Lcom/github/mmin18/widget/FlexLayout$TokenReader;,
        Lcom/github/mmin18/widget/FlexLayout$Ref;,
        Lcom/github/mmin18/widget/FlexLayout$Operator;,
        Lcom/github/mmin18/widget/FlexLayout$LayoutParams;
    }
.end annotation


# static fields
.field static final ADD:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final BL:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final BR:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final COMMA:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final CP_EQ:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final CP_GT:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final CP_GT_EQ:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final CP_LT:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final CP_LT_EQ:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final CP_NOT_EQ:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static DEBUG:Ljava/lang/Boolean;

.field static final DIV:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static EDIT_MODE_CUR_ID:I

.field static EDIT_MODE_ID_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field static final F_ABS:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final F_CEIL:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final F_FLOOR:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final F_MAX:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final F_MIN:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final F_MOD:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final F_POW:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final F_ROUND:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final LOG_AND:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final LOG_OR:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final MUL:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final NOT:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static OPS:[Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final PERC:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final SUB:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final U_DIP:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final U_DP:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final U_IN:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final U_MM:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final U_PT:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final U_PX:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final U_SP:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final X_COND1:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final X_COND2:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final X_FILL_PARENT:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final X_MATCH_PARENT:Lcom/github/mmin18/widget/FlexLayout$Operator;

.field static final X_WRAP_CONTENT:Lcom/github/mmin18/widget/FlexLayout$Operator;


# instance fields
.field myHeight:I

.field myHeightMeasureSpec:I

.field myWidth:I

.field myWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 821
    new-instance v6, Lcom/github/mmin18/widget/FlexLayout$1;

    const-string v1, "*"

    const/16 v2, 0x8

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/github/mmin18/widget/FlexLayout$1;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/github/mmin18/widget/FlexLayout;->MUL:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 827
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$2;

    const-string v8, "/"

    const/16 v9, 0x8

    const/4 v10, 0x1

    const/4 v11, 0x2

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/github/mmin18/widget/FlexLayout$2;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->DIV:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 833
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$3;

    const-string v2, "%"

    const/16 v3, 0x8

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/mmin18/widget/FlexLayout$3;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->PERC:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 851
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$4;

    const-string v8, "+"

    const/4 v9, 0x7

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/github/mmin18/widget/FlexLayout$4;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->ADD:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 857
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$5;

    const-string v2, "-"

    const/4 v3, 0x7

    const/4 v4, 0x1

    const/4 v5, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/mmin18/widget/FlexLayout$5;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->SUB:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 863
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$6;

    const-string v8, "!"

    const/16 v9, 0x9

    const/4 v10, 0x2

    const/4 v11, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/github/mmin18/widget/FlexLayout$6;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->NOT:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 873
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$7;

    const-string v2, "<"

    const/4 v3, 0x6

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/mmin18/widget/FlexLayout$7;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->CP_LT:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 883
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$8;

    const-string v8, "<="

    const/4 v9, 0x6

    const/4 v10, 0x1

    const/4 v11, 0x2

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/github/mmin18/widget/FlexLayout$8;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->CP_LT_EQ:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 893
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$9;

    const-string v2, ">"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/mmin18/widget/FlexLayout$9;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->CP_GT:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 903
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$10;

    const-string v8, ">="

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/github/mmin18/widget/FlexLayout$10;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->CP_GT_EQ:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 913
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$11;

    const-string v2, "=="

    const/4 v3, 0x5

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/mmin18/widget/FlexLayout$11;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->CP_EQ:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 923
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$12;

    const-string v8, "!="

    const/4 v9, 0x5

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/github/mmin18/widget/FlexLayout$12;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->CP_NOT_EQ:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 933
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$13;

    const-string v2, "&&"

    const/4 v3, 0x4

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/mmin18/widget/FlexLayout$13;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->LOG_AND:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 943
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$14;

    const-string/jumbo v8, "||"

    const/4 v9, 0x3

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/github/mmin18/widget/FlexLayout$14;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->LOG_OR:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 953
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$15;

    const-string v2, "("

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/mmin18/widget/FlexLayout$15;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->BL:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 959
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$16;

    const-string v8, ")"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/github/mmin18/widget/FlexLayout$16;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->BR:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 965
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$17;

    const-string v2, ","

    const/4 v4, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/mmin18/widget/FlexLayout$17;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->COMMA:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 971
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$18;

    const-string/jumbo v8, "sp"

    const/16 v9, 0xa

    const/4 v10, 0x2

    const/4 v11, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/github/mmin18/widget/FlexLayout$18;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->U_SP:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 977
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$19;

    const-string v2, "dp"

    const/16 v3, 0xa

    const/4 v4, 0x2

    const/4 v5, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/mmin18/widget/FlexLayout$19;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->U_DP:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 983
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$20;

    const-string v8, "dip"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/github/mmin18/widget/FlexLayout$20;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->U_DIP:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 989
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$21;

    const-string/jumbo v2, "px"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/mmin18/widget/FlexLayout$21;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->U_PX:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 995
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$22;

    const-string/jumbo v8, "pt"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/github/mmin18/widget/FlexLayout$22;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->U_PT:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 1001
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$23;

    const-string v2, "mm"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/mmin18/widget/FlexLayout$23;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->U_MM:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 1007
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$24;

    const-string v8, "in"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/github/mmin18/widget/FlexLayout$24;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->U_IN:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 1013
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$25;

    const-string v2, "max"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/mmin18/widget/FlexLayout$25;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->F_MAX:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 1019
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$26;

    const-string v8, "min"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x2

    const/4 v12, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/github/mmin18/widget/FlexLayout$26;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->F_MIN:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 1025
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$27;

    const-string/jumbo v2, "round"

    const/4 v5, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/mmin18/widget/FlexLayout$27;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->F_ROUND:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 1031
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$28;

    const-string v8, "ceil"

    const/4 v11, 0x1

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/github/mmin18/widget/FlexLayout$28;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->F_CEIL:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 1037
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$29;

    const-string v2, "floor"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/mmin18/widget/FlexLayout$29;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->F_FLOOR:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 1043
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$30;

    const-string v8, "abs"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/github/mmin18/widget/FlexLayout$30;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->F_ABS:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 1049
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$31;

    const-string v2, "mod"

    const/4 v5, 0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/mmin18/widget/FlexLayout$31;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->F_MOD:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 1055
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$32;

    const-string/jumbo v8, "pow"

    const/4 v11, 0x2

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/github/mmin18/widget/FlexLayout$32;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->F_POW:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 1061
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$33;

    const-string v2, "?"

    const/4 v3, 0x2

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/mmin18/widget/FlexLayout$33;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->X_COND1:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 1067
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$34;

    const-string v8, ":"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/github/mmin18/widget/FlexLayout$34;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->X_COND2:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 1073
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$35;

    const-string v2, "match_parent"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/mmin18/widget/FlexLayout$35;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->X_MATCH_PARENT:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 1089
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$36;

    const-string v8, "fill_parent"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/github/mmin18/widget/FlexLayout$36;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->X_FILL_PARENT:Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 1095
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$37;

    const-string/jumbo v2, "wrap_content"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/github/mmin18/widget/FlexLayout$37;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->X_WRAP_CONTENT:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v0, 0x25

    new-array v0, v0, [Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 1116
    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->ADD:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->SUB:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->DIV:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->MUL:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->PERC:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->NOT:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->CP_LT:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->CP_LT_EQ:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->CP_GT:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->CP_GT_EQ:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->CP_EQ:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->CP_NOT_EQ:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->LOG_AND:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->LOG_OR:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->BL:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->BR:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->COMMA:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->U_SP:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->U_DP:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->U_DIP:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->U_PX:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->U_PT:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->U_MM:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->U_IN:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->F_MAX:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->F_MIN:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->F_ROUND:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->F_CEIL:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->F_FLOOR:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->F_ABS:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->F_MOD:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->F_POW:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->X_COND1:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->X_COND2:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0x21

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->X_MATCH_PARENT:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0x22

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->X_FILL_PARENT:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0x23

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->X_WRAP_CONTENT:Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/16 v2, 0x24

    aput-object v1, v0, v2

    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->OPS:[Lcom/github/mmin18/widget/FlexLayout$Operator;

    const/4 v0, 0x0

    .line 1691
    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->DEBUG:Ljava/lang/Boolean;

    .line 1701
    sput-object v0, Lcom/github/mmin18/widget/FlexLayout;->EDIT_MODE_ID_MAP:Ljava/util/HashMap;

    const/high16 v0, 0xf020000

    .line 1702
    sput v0, Lcom/github/mmin18/widget/FlexLayout;->EDIT_MODE_CUR_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, v0}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-direct {p0, p1, p2, v0}, Lcom/github/mmin18/widget/FlexLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 49
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object p1, Lcom/github/mmin18/widget/FlexLayout;->DEBUG:Ljava/lang/Boolean;

    .line 50
    sget-object p1, Lcom/github/mmin18/widget/FlexLayout;->EDIT_MODE_ID_MAP:Ljava/util/HashMap;

    if-nez p1, :cond_0

    .line 51
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    sput-object p1, Lcom/github/mmin18/widget/FlexLayout;->EDIT_MODE_ID_MAP:Ljava/util/HashMap;

    :cond_0
    return-void
.end method

.method static getEditModeId(Ljava/lang/String;)I
    .locals 3

    .line 1710
    sget-object v0, Lcom/github/mmin18/widget/FlexLayout;->EDIT_MODE_ID_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 1712
    sget v0, Lcom/github/mmin18/widget/FlexLayout;->EDIT_MODE_CUR_ID:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/github/mmin18/widget/FlexLayout;->EDIT_MODE_CUR_ID:I

    .line 1713
    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->EDIT_MODE_ID_MAP:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v0

    .line 1716
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method static getEditModeIdName(I)Ljava/lang/String;
    .locals 3

    .line 1721
    sget-object v0, Lcom/github/mmin18/widget/FlexLayout;->EDIT_MODE_ID_MAP:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1722
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p0, :cond_0

    .line 1723
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static isDebug(Landroid/content/Context;)Z
    .locals 3

    .line 1694
    sget-object v0, Lcom/github/mmin18/widget/FlexLayout;->DEBUG:Ljava/lang/Boolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    if-eqz p0, :cond_1

    .line 1695
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    sput-object p0, Lcom/github/mmin18/widget/FlexLayout;->DEBUG:Ljava/lang/Boolean;

    .line 1697
    :cond_1
    sget-object p0, Lcom/github/mmin18/widget/FlexLayout;->DEBUG:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    if-ne p0, v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method static isEditModeId(I)Z
    .locals 1

    const/high16 v0, -0x10000

    and-int/2addr p0, v0

    const/high16 v0, 0xf020000

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static measureChild(Lcom/github/mmin18/widget/FlexLayout;Landroid/view/View;Lcom/github/mmin18/widget/FlexLayout$LayoutParams;II)Z
    .locals 6

    .line 691
    sget v0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->UNSPECIFIED:I

    const/4 v1, -0x2

    const/4 v2, 0x0

    if-ne p3, v0, :cond_2

    .line 692
    invoke-virtual {p2}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->getWidth()F

    move-result p3

    cmpl-float v0, p3, p3

    if-nez v0, :cond_0

    .line 694
    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    goto :goto_0

    .line 695
    :cond_0
    iget-object p3, p2, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->width2:Lcom/github/mmin18/widget/FlexLayout$RPN;

    invoke-static {p3}, Lcom/github/mmin18/widget/FlexLayout;->onlyRefSelf(Lcom/github/mmin18/widget/FlexLayout$RPN;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p2, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->left:Lcom/github/mmin18/widget/FlexLayout$RPN;

    invoke-static {p3}, Lcom/github/mmin18/widget/FlexLayout;->onlyRefSelf(Lcom/github/mmin18/widget/FlexLayout$RPN;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p2, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->right:Lcom/github/mmin18/widget/FlexLayout$RPN;

    invoke-static {p3}, Lcom/github/mmin18/widget/FlexLayout;->onlyRefSelf(Lcom/github/mmin18/widget/FlexLayout$RPN;)Z

    move-result p3

    if-eqz p3, :cond_1

    iget-object p3, p2, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->centerX:Lcom/github/mmin18/widget/FlexLayout$RPN;

    invoke-static {p3}, Lcom/github/mmin18/widget/FlexLayout;->onlyRefSelf(Lcom/github/mmin18/widget/FlexLayout$RPN;)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, -0x2

    goto :goto_0

    :cond_1
    return v2

    .line 704
    :cond_2
    :goto_0
    sget v0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->UNSPECIFIED:I

    if-ne p4, v0, :cond_5

    .line 705
    invoke-virtual {p2}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->getHeight()F

    move-result p4

    cmpl-float v0, p4, p4

    if-nez v0, :cond_3

    .line 707
    invoke-static {p4}, Ljava/lang/Math;->round(F)I

    move-result p4

    goto :goto_1

    .line 708
    :cond_3
    iget-object p4, p2, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->height2:Lcom/github/mmin18/widget/FlexLayout$RPN;

    invoke-static {p4}, Lcom/github/mmin18/widget/FlexLayout;->onlyRefSelf(Lcom/github/mmin18/widget/FlexLayout$RPN;)Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p4, p2, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->top:Lcom/github/mmin18/widget/FlexLayout$RPN;

    invoke-static {p4}, Lcom/github/mmin18/widget/FlexLayout;->onlyRefSelf(Lcom/github/mmin18/widget/FlexLayout$RPN;)Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p4, p2, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->bottom:Lcom/github/mmin18/widget/FlexLayout$RPN;

    invoke-static {p4}, Lcom/github/mmin18/widget/FlexLayout;->onlyRefSelf(Lcom/github/mmin18/widget/FlexLayout$RPN;)Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p4, p2, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->centerY:Lcom/github/mmin18/widget/FlexLayout$RPN;

    invoke-static {p4}, Lcom/github/mmin18/widget/FlexLayout;->onlyRefSelf(Lcom/github/mmin18/widget/FlexLayout$RPN;)Z

    move-result p4

    if-eqz p4, :cond_4

    const/4 p4, -0x2

    goto :goto_1

    :cond_4
    return v2

    .line 718
    :cond_5
    :goto_1
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v3, -0x1

    if-ne v0, v3, :cond_6

    .line 719
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout;->myWidthMeasureSpec:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v4

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v0, v4, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    goto :goto_2

    .line 721
    :cond_6
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-static {v0, v2, p3}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p3

    .line 724
    :goto_2
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    if-ne v0, v3, :cond_7

    .line 725
    iget v0, p0, Lcom/github/mmin18/widget/FlexLayout;->myHeightMeasureSpec:I

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result p0

    add-int/2addr v1, p0

    invoke-static {v0, v1, p4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    goto :goto_3

    .line 727
    :cond_7
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    invoke-static {p0, v2, p4}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result p0

    .line 729
    :goto_3
    invoke-virtual {p1, p3, p0}, Landroid/view/View;->measure(II)V

    .line 730
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    iput p0, p2, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mMeasuredWidth:I

    .line 731
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    iput p0, p2, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mMeasuredHeight:I

    const/4 p0, 0x1

    return p0
.end method

.method static onlyRefSelf(Lcom/github/mmin18/widget/FlexLayout$RPN;)Z
    .locals 2

    if-eqz p0, :cond_1

    .line 737
    invoke-static {p0}, Lcom/github/mmin18/widget/FlexLayout$RPN;->access$000(Lcom/github/mmin18/widget/FlexLayout$RPN;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 738
    instance-of v1, v0, Lcom/github/mmin18/widget/FlexLayout$Ref;

    if-eqz v1, :cond_0

    .line 739
    check-cast v0, Lcom/github/mmin18/widget/FlexLayout$Ref;

    .line 740
    iget v0, v0, Lcom/github/mmin18/widget/FlexLayout$Ref;->target:I

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 409
    instance-of p1, p1, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;

    return p1
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 2

    .line 403
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 37
    invoke-virtual {p0, p1}, Lcom/github/mmin18/widget/FlexLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/github/mmin18/widget/FlexLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 414
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/github/mmin18/widget/FlexLayout$LayoutParams;
    .locals 2

    .line 393
    new-instance v0, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method isRtl()Z
    .locals 3

    .line 61
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x11

    if-lt v0, v2, :cond_0

    .line 62
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .line 751
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result p1

    .line 752
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result p3

    .line 756
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p5

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p5, :cond_2

    .line 759
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 760
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_1

    .line 761
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;

    .line 762
    invoke-virtual {p0}, Lcom/github/mmin18/widget/FlexLayout;->isRtl()Z

    move-result v3

    if-eqz v3, :cond_0

    sub-int v3, p4, p2

    sub-int/2addr v3, p1

    .line 765
    invoke-virtual {v2}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->getRight()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    sub-int v4, v3, v4

    invoke-virtual {v2}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->getTop()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v5, p3

    .line 766
    invoke-virtual {v2}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->getLeft()F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int/2addr v3, v6

    invoke-virtual {v2}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->getBottom()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p3

    .line 765
    invoke-virtual {v1, v4, v5, v3, v2}, Landroid/view/View;->layout(IIII)V

    goto :goto_1

    .line 768
    :cond_0
    invoke-virtual {v2}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->getLeft()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v2}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->getTop()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/2addr v4, p3

    .line 769
    invoke-virtual {v2}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->getRight()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    add-int/2addr v5, p1

    invoke-virtual {v2}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->getBottom()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr v2, p3

    .line 768
    invoke-virtual {v1, v3, v4, v5, v2}, Landroid/view/View;->layout(IIII)V

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 21

    move-object/from16 v0, p0

    .line 419
    invoke-super/range {p0 .. p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    .line 421
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v1

    .line 422
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v2

    .line 423
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v3

    .line 424
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    .line 426
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 427
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    .line 428
    invoke-static/range {p1 .. p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    .line 429
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v8

    move/from16 v9, p1

    .line 431
    iput v9, v0, Lcom/github/mmin18/widget/FlexLayout;->myWidthMeasureSpec:I

    move/from16 v9, p2

    .line 432
    iput v9, v0, Lcom/github/mmin18/widget/FlexLayout;->myHeightMeasureSpec:I

    const/high16 v9, -0x80000000

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, -0x1

    if-ne v5, v10, :cond_0

    sub-int/2addr v7, v1

    sub-int v5, v7, v2

    .line 436
    iput v5, v0, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    goto :goto_0

    :cond_0
    if-ne v5, v9, :cond_1

    .line 438
    iput v11, v0, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    sub-int/2addr v7, v1

    sub-int v5, v7, v2

    goto :goto_0

    .line 441
    :cond_1
    iput v11, v0, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    const/4 v5, -0x1

    :goto_0
    if-ne v6, v10, :cond_2

    sub-int/2addr v8, v3

    sub-int v6, v8, v4

    .line 445
    iput v6, v0, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    goto :goto_1

    :cond_2
    if-ne v6, v9, :cond_3

    .line 447
    iput v11, v0, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    sub-int/2addr v8, v3

    sub-int v6, v8, v4

    goto :goto_1

    .line 450
    :cond_3
    iput v11, v0, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    const/4 v6, -0x1

    .line 454
    :goto_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v7, :cond_f

    .line 457
    invoke-virtual {v0, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v14

    .line 458
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v15

    check-cast v15, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;

    .line 459
    invoke-virtual {v15}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->reset()V

    .line 460
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    move-result v14

    const/16 v9, 0x8

    const/4 v10, 0x0

    if-ne v14, v9, :cond_4

    .line 461
    iput v10, v15, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mWidth:F

    .line 462
    iput v10, v15, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mHeight:F

    .line 464
    :cond_4
    iget-object v9, v15, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->left:Lcom/github/mmin18/widget/FlexLayout$RPN;

    const/4 v14, 0x2

    if-nez v9, :cond_9

    .line 466
    iget-object v9, v15, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->right:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-eqz v9, :cond_5

    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    .line 468
    :goto_3
    iget-object v11, v15, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->centerX:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-eqz v11, :cond_6

    add-int/lit8 v9, v9, 0x1

    .line 470
    :cond_6
    iget-object v11, v15, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->width2:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-nez v11, :cond_7

    iget v11, v15, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v13, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->UNSPECIFIED:I

    if-eq v11, v13, :cond_8

    :cond_7
    add-int/lit8 v9, v9, 0x1

    :cond_8
    if-ge v9, v14, :cond_9

    .line 473
    iput v10, v15, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mLeft:F

    .line 475
    :cond_9
    iget-object v9, v15, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->top:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-nez v9, :cond_e

    .line 477
    iget-object v9, v15, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->bottom:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-eqz v9, :cond_a

    const/16 v16, 0x1

    goto :goto_4

    :cond_a
    const/16 v16, 0x0

    .line 479
    :goto_4
    iget-object v9, v15, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->centerY:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-eqz v9, :cond_b

    add-int/lit8 v16, v16, 0x1

    .line 481
    :cond_b
    iget-object v9, v15, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->height2:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-nez v9, :cond_c

    iget v9, v15, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v11, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->UNSPECIFIED:I

    if-eq v9, v11, :cond_d

    :cond_c
    add-int/lit8 v16, v16, 0x1

    :cond_d
    move/from16 v9, v16

    if-ge v9, v14, :cond_e

    .line 484
    iput v10, v15, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mTop:F

    :cond_e
    add-int/lit8 v12, v12, 0x1

    const/high16 v9, -0x80000000

    const/high16 v10, 0x40000000    # 2.0f

    const/4 v11, -0x1

    goto :goto_2

    :cond_f
    const/4 v9, 0x0

    :goto_5
    mul-int/lit8 v10, v7, 0x4

    const-string v11, ")"

    const-string v12, "incomplete layout, circular dependency? (index="

    if-ge v9, v10, :cond_33

    const/4 v10, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, -0x1

    :goto_6
    if-ge v10, v7, :cond_24

    .line 493
    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v13

    .line 494
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v18

    move-object/from16 v8, v18

    check-cast v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;

    move/from16 v18, v4

    .line 496
    iget-object v4, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->left:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-eqz v4, :cond_11

    move/from16 v19, v3

    iget v3, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mLeft:F

    cmpl-float v3, v3, v3

    if-eqz v3, :cond_10

    .line 497
    iget-object v3, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->positionDescription:Ljava/lang/String;

    move/from16 v20, v2

    const/4 v2, 0x0

    invoke-virtual {v4, v0, v10, v2, v3}, Lcom/github/mmin18/widget/FlexLayout$RPN;->eval(Lcom/github/mmin18/widget/FlexLayout;IILjava/lang/String;)F

    move-result v3

    cmpl-float v2, v3, v3

    if-nez v2, :cond_12

    .line 499
    iput v3, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mLeft:F

    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    :cond_10
    move/from16 v20, v2

    goto :goto_7

    :cond_11
    move/from16 v20, v2

    move/from16 v19, v3

    .line 503
    :cond_12
    :goto_7
    iget-object v2, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->right:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-eqz v2, :cond_13

    iget v3, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mRight:F

    cmpl-float v3, v3, v3

    if-eqz v3, :cond_13

    .line 504
    iget-object v3, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->positionDescription:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v10, v4, v3}, Lcom/github/mmin18/widget/FlexLayout$RPN;->eval(Lcom/github/mmin18/widget/FlexLayout;IILjava/lang/String;)F

    move-result v2

    cmpl-float v3, v2, v2

    if-nez v3, :cond_13

    .line 506
    iput v2, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mRight:F

    add-int/lit8 v15, v15, 0x1

    .line 510
    :cond_13
    iget-object v2, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->top:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-eqz v2, :cond_14

    iget v3, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mTop:F

    cmpl-float v3, v3, v3

    if-eqz v3, :cond_14

    .line 511
    iget-object v3, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->positionDescription:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v10, v4, v3}, Lcom/github/mmin18/widget/FlexLayout$RPN;->eval(Lcom/github/mmin18/widget/FlexLayout;IILjava/lang/String;)F

    move-result v2

    cmpl-float v3, v2, v2

    if-nez v3, :cond_14

    .line 513
    iput v2, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mTop:F

    add-int/lit8 v15, v15, 0x1

    .line 517
    :cond_14
    iget-object v2, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->bottom:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-eqz v2, :cond_15

    iget v3, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mBottom:F

    cmpl-float v3, v3, v3

    if-eqz v3, :cond_15

    .line 518
    iget-object v3, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->positionDescription:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v10, v4, v3}, Lcom/github/mmin18/widget/FlexLayout$RPN;->eval(Lcom/github/mmin18/widget/FlexLayout;IILjava/lang/String;)F

    move-result v2

    cmpl-float v3, v2, v2

    if-nez v3, :cond_15

    .line 520
    iput v2, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mBottom:F

    add-int/lit8 v15, v15, 0x1

    .line 524
    :cond_15
    iget-object v2, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->centerX:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-eqz v2, :cond_16

    iget v3, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mCenterX:F

    cmpl-float v3, v3, v3

    if-eqz v3, :cond_16

    .line 525
    iget-object v3, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->positionDescription:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v10, v4, v3}, Lcom/github/mmin18/widget/FlexLayout$RPN;->eval(Lcom/github/mmin18/widget/FlexLayout;IILjava/lang/String;)F

    move-result v2

    cmpl-float v3, v2, v2

    if-nez v3, :cond_16

    .line 527
    iput v2, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mCenterX:F

    add-int/lit8 v15, v15, 0x1

    .line 531
    :cond_16
    iget-object v2, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->centerY:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-eqz v2, :cond_17

    iget v3, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mCenterY:F

    cmpl-float v3, v3, v3

    if-eqz v3, :cond_17

    .line 532
    iget-object v3, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->positionDescription:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v10, v4, v3}, Lcom/github/mmin18/widget/FlexLayout$RPN;->eval(Lcom/github/mmin18/widget/FlexLayout;IILjava/lang/String;)F

    move-result v2

    cmpl-float v3, v2, v2

    if-nez v3, :cond_17

    .line 534
    iput v2, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mCenterY:F

    add-int/lit8 v15, v15, 0x1

    .line 538
    :cond_17
    iget v2, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mWidth:F

    cmpl-float v2, v2, v2

    if-eqz v2, :cond_1c

    .line 539
    iget-object v2, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->width2:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-eqz v2, :cond_18

    .line 540
    iget-object v3, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->positionDescription:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v10, v4, v3}, Lcom/github/mmin18/widget/FlexLayout$RPN;->eval(Lcom/github/mmin18/widget/FlexLayout;IILjava/lang/String;)F

    move-result v2

    cmpl-float v3, v2, v2

    if-nez v3, :cond_1c

    .line 542
    iput v2, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mWidth:F

    goto :goto_8

    :cond_18
    const/4 v4, 0x0

    .line 545
    iget v2, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    sget v3, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->UNSPECIFIED:I

    if-eq v2, v3, :cond_1c

    const/4 v3, -0x1

    if-ne v2, v3, :cond_19

    .line 546
    iget v2, v0, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    if-eq v2, v3, :cond_19

    int-to-float v2, v2

    .line 547
    iput v2, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mWidth:F

    goto :goto_8

    .line 549
    :cond_19
    iget v2, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-ltz v2, :cond_1a

    int-to-float v2, v2

    .line 550
    iput v2, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mWidth:F

    :goto_8
    add-int/lit8 v15, v15, 0x1

    goto :goto_9

    .line 553
    :cond_1a
    iget v3, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mMeasuredWidth:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1b

    iget v3, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0, v13, v8, v2, v3}, Lcom/github/mmin18/widget/FlexLayout;->measureChild(Lcom/github/mmin18/widget/FlexLayout;Landroid/view/View;Lcom/github/mmin18/widget/FlexLayout$LayoutParams;II)Z

    move-result v2

    if-eqz v2, :cond_1b

    add-int/lit8 v15, v15, 0x1

    .line 556
    :cond_1b
    iget v2, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mMeasuredWidth:I

    if-eq v2, v4, :cond_1c

    iget v3, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_1c

    int-to-float v2, v2

    .line 557
    iput v2, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mWidth:F

    goto :goto_8

    .line 563
    :cond_1c
    :goto_9
    iget v2, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mHeight:F

    cmpl-float v2, v2, v2

    if-eqz v2, :cond_21

    .line 564
    iget-object v2, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->height2:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-eqz v2, :cond_1d

    .line 565
    iget-object v3, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->positionDescription:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-virtual {v2, v0, v10, v4, v3}, Lcom/github/mmin18/widget/FlexLayout$RPN;->eval(Lcom/github/mmin18/widget/FlexLayout;IILjava/lang/String;)F

    move-result v2

    cmpl-float v3, v2, v2

    if-nez v3, :cond_21

    .line 567
    iput v2, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mHeight:F

    goto :goto_a

    :cond_1d
    const/4 v4, 0x1

    .line 570
    iget v2, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    sget v3, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->UNSPECIFIED:I

    if-eq v2, v3, :cond_21

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1e

    .line 571
    iget v2, v0, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    if-eq v2, v3, :cond_1e

    int-to-float v2, v2

    .line 572
    iput v2, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mHeight:F

    goto :goto_a

    .line 574
    :cond_1e
    iget v2, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-ltz v2, :cond_1f

    int-to-float v2, v2

    .line 575
    iput v2, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mHeight:F

    :goto_a
    add-int/lit8 v15, v15, 0x1

    goto :goto_b

    .line 578
    :cond_1f
    iget v3, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mMeasuredHeight:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_20

    iget v3, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v0, v13, v8, v3, v2}, Lcom/github/mmin18/widget/FlexLayout;->measureChild(Lcom/github/mmin18/widget/FlexLayout;Landroid/view/View;Lcom/github/mmin18/widget/FlexLayout$LayoutParams;II)Z

    move-result v2

    if-eqz v2, :cond_20

    add-int/lit8 v15, v15, 0x1

    .line 581
    :cond_20
    iget v2, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mMeasuredHeight:I

    if-eq v2, v4, :cond_21

    iget v3, v8, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v4, -0x2

    if-ne v3, v4, :cond_21

    int-to-float v2, v2

    .line 582
    iput v2, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mHeight:F

    goto :goto_a

    .line 589
    :cond_21
    :goto_b
    invoke-virtual {v8}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->isValid()Z

    move-result v2

    if-eqz v2, :cond_22

    add-int/lit8 v14, v14, 0x1

    const/4 v3, -0x1

    goto :goto_c

    :cond_22
    move/from16 v2, v17

    const/4 v3, -0x1

    if-ne v2, v3, :cond_23

    move/from16 v17, v10

    goto :goto_c

    :cond_23
    move/from16 v17, v2

    :goto_c
    add-int/lit8 v10, v10, 0x1

    move/from16 v4, v18

    move/from16 v3, v19

    move/from16 v2, v20

    goto/16 :goto_6

    :cond_24
    move/from16 v20, v2

    move/from16 v19, v3

    move/from16 v18, v4

    move/from16 v2, v17

    const/4 v3, -0x1

    if-ne v14, v7, :cond_25

    .line 596
    iget v4, v0, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    if-eq v4, v3, :cond_25

    iget v4, v0, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    if-eq v4, v3, :cond_25

    const/16 v16, 0x1

    goto/16 :goto_13

    :cond_25
    if-nez v15, :cond_32

    .line 601
    iget v4, v0, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    if-eq v4, v3, :cond_27

    iget v4, v0, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    if-ne v4, v3, :cond_26

    goto :goto_d

    .line 640
    :cond_26
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_27
    :goto_d
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_e
    if-ge v2, v7, :cond_2e

    .line 605
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 606
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;

    .line 607
    invoke-virtual {v8}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->getRight()F

    move-result v10

    cmpl-float v11, v10, v10

    if-nez v11, :cond_28

    .line 609
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_f

    .line 610
    :cond_28
    iget v10, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mMeasuredWidth:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2a

    .line 611
    invoke-virtual {v8}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->getLeft()F

    move-result v10

    cmpl-float v11, v10, v10

    if-nez v11, :cond_29

    .line 613
    iget v11, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mMeasuredWidth:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_f

    .line 615
    :cond_29
    iget v10, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mMeasuredWidth:I

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 618
    :cond_2a
    :goto_f
    invoke-virtual {v8}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->getBottom()F

    move-result v10

    cmpl-float v11, v10, v10

    if-nez v11, :cond_2b

    .line 620
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_10

    .line 621
    :cond_2b
    iget v10, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mMeasuredHeight:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2d

    .line 622
    invoke-virtual {v8}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->getTop()F

    move-result v10

    cmpl-float v11, v10, v10

    if-nez v11, :cond_2c

    .line 624
    iget v11, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mMeasuredHeight:I

    int-to-float v11, v11

    add-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    goto :goto_10

    .line 626
    :cond_2c
    iget v10, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mMeasuredHeight:I

    invoke-static {v4, v10}, Ljava/lang/Math;->max(II)I

    move-result v4

    :cond_2d
    :goto_10
    const/4 v10, -0x1

    .line 630
    iput v10, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mMeasuredWidth:I

    .line 631
    iput v10, v8, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mMeasuredHeight:I

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    :cond_2e
    const/4 v10, -0x1

    .line 633
    iget v2, v0, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    if-ne v2, v10, :cond_30

    if-ne v5, v10, :cond_2f

    goto :goto_11

    .line 634
    :cond_2f
    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    :goto_11
    iput v3, v0, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    .line 636
    :cond_30
    iget v2, v0, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    if-ne v2, v10, :cond_32

    if-ne v6, v10, :cond_31

    goto :goto_12

    .line 637
    :cond_31
    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    :goto_12
    iput v4, v0, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    :cond_32
    add-int/lit8 v9, v9, 0x1

    move/from16 v4, v18

    move/from16 v3, v19

    move/from16 v2, v20

    goto/16 :goto_5

    :cond_33
    move/from16 v20, v2

    move/from16 v19, v3

    move/from16 v18, v4

    const/16 v16, 0x0

    :goto_13
    if-nez v16, :cond_37

    .line 646
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    :goto_14
    if-ge v2, v7, :cond_36

    .line 648
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 649
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;

    .line 650
    invoke-virtual {v3}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->isValid()Z

    move-result v3

    if-nez v3, :cond_35

    .line 651
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_34

    const/16 v3, 0x2c

    .line 652
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 654
    :cond_34
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    .line 657
    :cond_36
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_37
    const/4 v2, 0x0

    :goto_15
    if-ge v2, v7, :cond_3e

    .line 661
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 662
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;

    .line 665
    iget-object v5, v4, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->width2:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-eqz v5, :cond_38

    iget v5, v4, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mWidth:F

    cmpl-float v6, v5, v5

    if-nez v6, :cond_38

    .line 666
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    const/high16 v6, 0x40000000    # 2.0f

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_16

    :cond_38
    const/high16 v6, 0x40000000    # 2.0f

    .line 667
    iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v8, -0x2

    if-ne v5, v8, :cond_39

    .line 668
    iget v5, v0, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    const/high16 v8, -0x80000000

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_16

    :cond_39
    const/4 v8, -0x1

    if-ne v5, v8, :cond_3a

    .line 670
    iget v5, v0, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    goto :goto_16

    .line 672
    :cond_3a
    invoke-virtual {v4}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->getWidth()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 674
    :goto_16
    iget-object v8, v4, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->height2:Lcom/github/mmin18/widget/FlexLayout$RPN;

    if-eqz v8, :cond_3b

    iget v8, v4, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->mHeight:F

    cmpl-float v9, v8, v8

    if-nez v9, :cond_3b

    .line 675
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    const/4 v9, -0x2

    const/high16 v10, -0x80000000

    goto :goto_17

    .line 676
    :cond_3b
    iget v8, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v9, -0x2

    if-ne v8, v9, :cond_3c

    .line 677
    iget v4, v0, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    const/high16 v10, -0x80000000

    invoke-static {v4, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    :goto_17
    const/4 v11, -0x1

    goto :goto_18

    :cond_3c
    const/high16 v10, -0x80000000

    const/4 v11, -0x1

    if-ne v8, v11, :cond_3d

    .line 679
    iget v4, v0, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    goto :goto_18

    .line 681
    :cond_3d
    invoke-virtual {v4}, Lcom/github/mmin18/widget/FlexLayout$LayoutParams;->getHeight()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {v4, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 683
    :goto_18
    invoke-virtual {v3, v5, v4}, Landroid/view/View;->measure(II)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_15

    .line 686
    :cond_3e
    iget v2, v0, Lcom/github/mmin18/widget/FlexLayout;->myWidth:I

    add-int/2addr v2, v1

    add-int v2, v2, v20

    iget v1, v0, Lcom/github/mmin18/widget/FlexLayout;->myHeight:I

    add-int v1, v1, v19

    add-int v1, v1, v18

    invoke-virtual {v0, v2, v1}, Landroid/view/ViewGroup;->setMeasuredDimension(II)V

    return-void
.end method
