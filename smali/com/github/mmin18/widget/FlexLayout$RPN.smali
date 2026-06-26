.class Lcom/github/mmin18/widget/FlexLayout$RPN;
.super Ljava/lang/Object;
.source "FlexLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/github/mmin18/widget/FlexLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RPN"
.end annotation


# instance fields
.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private orig:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1547
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1548
    iput-object p1, p0, Lcom/github/mmin18/widget/FlexLayout$RPN;->list:Ljava/util/ArrayList;

    .line 1549
    iput-object p2, p0, Lcom/github/mmin18/widget/FlexLayout$RPN;->orig:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/github/mmin18/widget/FlexLayout$RPN;)Ljava/util/ArrayList;
    .locals 0

    .line 1542
    iget-object p0, p0, Lcom/github/mmin18/widget/FlexLayout$RPN;->list:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static parse(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/github/mmin18/widget/FlexLayout$RPN;
    .locals 9

    const/4 v0, 0x0

    if-eqz p1, :cond_17

    .line 1556
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 1560
    :cond_0
    new-instance v1, Lcom/github/mmin18/widget/FlexLayout$TokenReader;

    invoke-direct {v1, p1, p2}, Lcom/github/mmin18/widget/FlexLayout$TokenReader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1561
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1562
    new-instance v3, Ljava/util/Stack;

    invoke-direct {v3}, Ljava/util/Stack;-><init>()V

    .line 1565
    :cond_1
    :goto_0
    invoke-virtual {v1, p0}, Lcom/github/mmin18/widget/FlexLayout$TokenReader;->readToken(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    const-string/jumbo v5, "parentheses mismatched: "

    const-string v6, "="

    if-eqz v4, :cond_11

    .line 1566
    instance-of v7, v4, Ljava/lang/Number;

    if-eqz v7, :cond_2

    .line 1567
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1568
    :cond_2
    instance-of v7, v4, Lcom/github/mmin18/widget/FlexLayout$Ref;

    if-eqz v7, :cond_3

    .line 1569
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1570
    :cond_3
    instance-of v7, v4, Lcom/github/mmin18/widget/FlexLayout$Operator;

    if-eqz v7, :cond_10

    .line 1571
    check-cast v4, Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 1572
    iget v7, v4, Lcom/github/mmin18/widget/FlexLayout$Operator;->flag:I

    const/4 v8, 0x1

    and-int/2addr v7, v8

    if-eqz v7, :cond_4

    .line 1573
    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1574
    :cond_4
    sget-object v7, Lcom/github/mmin18/widget/FlexLayout;->COMMA:Lcom/github/mmin18/widget/FlexLayout$Operator;

    if-ne v4, v7, :cond_7

    .line 1575
    :goto_1
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    sget-object v5, Lcom/github/mmin18/widget/FlexLayout;->BL:Lcom/github/mmin18/widget/FlexLayout$Operator;

    if-eq v4, v5, :cond_5

    .line 1576
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1578
    :cond_5
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_0

    .line 1579
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "comma misplaced or parentheses mismatched: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1581
    :cond_7
    sget-object v7, Lcom/github/mmin18/widget/FlexLayout;->BL:Lcom/github/mmin18/widget/FlexLayout$Operator;

    if-ne v4, v7, :cond_8

    .line 1582
    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1583
    :cond_8
    sget-object v7, Lcom/github/mmin18/widget/FlexLayout;->BR:Lcom/github/mmin18/widget/FlexLayout$Operator;

    if-ne v4, v7, :cond_b

    .line 1584
    :goto_2
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    sget-object v7, Lcom/github/mmin18/widget/FlexLayout;->BL:Lcom/github/mmin18/widget/FlexLayout$Operator;

    if-eq v4, v7, :cond_9

    .line 1585
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1587
    :cond_9
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v4

    if-nez v4, :cond_a

    .line 1590
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    .line 1591
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/mmin18/widget/FlexLayout$Operator;

    iget v4, v4, Lcom/github/mmin18/widget/FlexLayout$Operator;->flag:I

    and-int/2addr v4, v8

    if-eqz v4, :cond_1

    .line 1592
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1588
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1594
    :cond_b
    iget v5, v4, Lcom/github/mmin18/widget/FlexLayout$Operator;->argc:I

    if-nez v5, :cond_c

    .line 1596
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1598
    :cond_c
    :goto_3
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result v5

    if-nez v5, :cond_f

    .line 1599
    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 1600
    iget v6, v4, Lcom/github/mmin18/widget/FlexLayout$Operator;->assoc:I

    if-ne v6, v8, :cond_d

    iget v6, v4, Lcom/github/mmin18/widget/FlexLayout$Operator;->prec:I

    iget v7, v5, Lcom/github/mmin18/widget/FlexLayout$Operator;->prec:I

    if-le v6, v7, :cond_e

    :cond_d
    iget v6, v4, Lcom/github/mmin18/widget/FlexLayout$Operator;->assoc:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_f

    iget v6, v4, Lcom/github/mmin18/widget/FlexLayout$Operator;->prec:I

    iget v5, v5, Lcom/github/mmin18/widget/FlexLayout$Operator;->prec:I

    if-ge v6, v5, :cond_f

    .line 1602
    :cond_e
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1607
    :cond_f
    invoke-virtual {v3, v4}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 1610
    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown token "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1614
    :cond_11
    :goto_4
    invoke-virtual {v3}, Ljava/util/Stack;->empty()Z

    move-result p0

    if-nez p0, :cond_14

    .line 1615
    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 1616
    sget-object v1, Lcom/github/mmin18/widget/FlexLayout;->BL:Lcom/github/mmin18/widget/FlexLayout$Operator;

    if-eq p0, v1, :cond_13

    .line 1618
    iget v1, p0, Lcom/github/mmin18/widget/FlexLayout$Operator;->assoc:I

    if-eqz v1, :cond_12

    .line 1621
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1619
    :cond_12
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "syntax error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1617
    :cond_13
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1625
    :cond_14
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_15

    return-object v0

    .line 1628
    :cond_15
    new-instance p0, Lcom/github/mmin18/widget/FlexLayout$RPN;

    invoke-static {v0}, Lcom/github/mmin18/widget/FlexLayout;->isDebug(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_16
    invoke-direct {p0, v2, v0}, Lcom/github/mmin18/widget/FlexLayout$RPN;-><init>(Ljava/util/ArrayList;Ljava/lang/String;)V

    return-object p0

    :cond_17
    :goto_5
    return-object v0
.end method


# virtual methods
.method public eval(Lcom/github/mmin18/widget/FlexLayout;IILjava/lang/String;)F
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    .line 1633
    iget-object v2, v0, Lcom/github/mmin18/widget/FlexLayout$RPN;->list:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [F

    .line 1636
    iget-object v3, v0, Lcom/github/mmin18/widget/FlexLayout$RPN;->list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, ")"

    const-string v8, " ("

    const-string v9, ""

    const-string v10, ":"

    const/4 v11, 0x1

    if-eqz v6, :cond_12

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 1637
    instance-of v12, v6, Lcom/github/mmin18/widget/FlexLayout$Operator;

    if-eqz v12, :cond_b

    .line 1638
    move-object v13, v6

    check-cast v13, Lcom/github/mmin18/widget/FlexLayout$Operator;

    .line 1639
    iget v6, v13, Lcom/github/mmin18/widget/FlexLayout$Operator;->argc:I

    if-ge v5, v6, :cond_2

    .line 1640
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "arg error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1

    iget-object v4, v0, Lcom/github/mmin18/widget/FlexLayout$RPN;->orig:Ljava/lang/String;

    if-nez v4, :cond_0

    goto :goto_1

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/github/mmin18/widget/FlexLayout$RPN;->orig:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    const/high16 v12, 0x7fc00000    # Float.NaN

    if-nez v6, :cond_3

    const/high16 v17, 0x7fc00000    # Float.NaN

    :goto_2
    const/high16 v18, 0x7fc00000    # Float.NaN

    goto :goto_3

    :cond_3
    if-ne v6, v11, :cond_4

    add-int/lit8 v5, v5, -0x1

    .line 1646
    aget v6, v2, v5

    move/from16 v17, v6

    goto :goto_2

    :cond_4
    const/4 v11, 0x2

    if-ne v6, v11, :cond_5

    add-int/lit8 v5, v5, -0x1

    .line 1648
    aget v6, v2, v5

    add-int/lit8 v5, v5, -0x1

    .line 1649
    aget v7, v2, v5

    move/from16 v18, v6

    move/from16 v17, v7

    :goto_3
    move-object/from16 v14, p1

    move/from16 v15, p2

    move/from16 v16, p3

    .line 1663
    invoke-virtual/range {v13 .. v18}, Lcom/github/mmin18/widget/FlexLayout$Operator;->eval(Lcom/github/mmin18/widget/FlexLayout;IIFF)F

    move-result v6

    add-int/lit8 v7, v5, 0x1

    .line 1664
    aput v6, v2, v5

    goto :goto_6

    .line 1651
    :cond_5
    sget-object v6, Lcom/github/mmin18/widget/FlexLayout;->X_COND2:Lcom/github/mmin18/widget/FlexLayout$Operator;

    if-ne v13, v6, :cond_8

    add-int/lit8 v5, v5, -0x1

    .line 1653
    aget v6, v2, v5

    add-int/lit8 v5, v5, -0x1

    .line 1654
    aget v7, v2, v5

    add-int/lit8 v5, v5, -0x1

    .line 1655
    aget v8, v2, v5

    cmpl-float v9, v8, v8

    if-nez v9, :cond_7

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_6

    move v12, v7

    goto :goto_4

    :cond_6
    move v12, v6

    :cond_7
    :goto_4
    add-int/lit8 v6, v5, 0x1

    .line 1657
    aput v12, v2, v5

    move v5, v6

    goto/16 :goto_0

    .line 1660
    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "argc>2 not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_a

    iget-object v4, v0, Lcom/github/mmin18/widget/FlexLayout$RPN;->orig:Ljava/lang/String;

    if-nez v4, :cond_9

    goto :goto_5

    :cond_9
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/github/mmin18/widget/FlexLayout$RPN;->orig:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_a
    :goto_5
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1665
    :cond_b
    instance-of v11, v6, Ljava/lang/Float;

    if-eqz v11, :cond_c

    add-int/lit8 v7, v5, 0x1

    .line 1666
    check-cast v6, Ljava/lang/Float;

    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    move-result v6

    aput v6, v2, v5

    :goto_6
    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    :goto_7
    move v5, v7

    goto/16 :goto_0

    .line 1667
    :cond_c
    instance-of v11, v6, Lcom/github/mmin18/widget/FlexLayout$Ref;

    if-eqz v11, :cond_f

    .line 1668
    check-cast v6, Lcom/github/mmin18/widget/FlexLayout$Ref;

    if-eqz v1, :cond_e

    iget-object v7, v0, Lcom/github/mmin18/widget/FlexLayout$RPN;->orig:Ljava/lang/String;

    if-nez v7, :cond_d

    goto :goto_8

    :cond_d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v0, Lcom/github/mmin18/widget/FlexLayout$RPN;->orig:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_9

    :cond_e
    :goto_8
    const/4 v7, 0x0

    :goto_9
    move-object/from16 v11, p1

    move/from16 v12, p2

    move/from16 v13, p3

    invoke-virtual {v6, v11, v12, v13, v7}, Lcom/github/mmin18/widget/FlexLayout$Ref;->eval(Lcom/github/mmin18/widget/FlexLayout;IILjava/lang/String;)F

    move-result v6

    add-int/lit8 v7, v5, 0x1

    .line 1670
    aput v6, v2, v5

    goto :goto_7

    .line 1672
    :cond_f
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown token "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_11

    iget-object v4, v0, Lcom/github/mmin18/widget/FlexLayout$RPN;->orig:Ljava/lang/String;

    if-nez v4, :cond_10

    goto :goto_a

    :cond_10
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/github/mmin18/widget/FlexLayout$RPN;->orig:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_11
    :goto_a
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_12
    if-eq v5, v11, :cond_15

    .line 1678
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "syntax error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_14

    iget-object v4, v0, Lcom/github/mmin18/widget/FlexLayout$RPN;->orig:Ljava/lang/String;

    if-nez v4, :cond_13

    goto :goto_b

    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/github/mmin18/widget/FlexLayout$RPN;->orig:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_14
    :goto_b
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1681
    :cond_15
    aget v1, v2, v4

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1686
    iget-object v0, p0, Lcom/github/mmin18/widget/FlexLayout$RPN;->list:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
