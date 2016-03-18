/*
 * generated by Xtext 2.9.1
 */
grammar InternalDroneScript;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package hu.bme.mit.inf.kortargyalo.drones.behavior.xtext.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package hu.bme.mit.inf.kortargyalo.drones.behavior.xtext.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import hu.bme.mit.inf.kortargyalo.drones.behavior.xtext.services.DroneScriptGrammarAccess;

}

@parser::members {

 	private DroneScriptGrammarAccess grammarAccess;

    public InternalDroneScriptParser(TokenStream input, DroneScriptGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "DronesBehavior";
   	}

   	@Override
   	protected DroneScriptGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleDronesBehavior
entryRuleDronesBehavior returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getDronesBehaviorRule()); }
	iv_ruleDronesBehavior=ruleDronesBehavior
	{ $current=$iv_ruleDronesBehavior.current; }
	EOF;

// Rule DronesBehavior
ruleDronesBehavior returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='scenario'
		{
			newLeafNode(otherlv_0, grammarAccess.getDronesBehaviorAccess().getScenarioKeyword_0());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getDronesBehaviorRule());
					}
				}
				{
					newCompositeNode(grammarAccess.getDronesBehaviorAccess().getScenarioScenarioCrossReference_1_0());
				}
				ruleQualifiedName
				{
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				otherlv_2='signal'
				{
					newLeafNode(otherlv_2, grammarAccess.getDronesBehaviorAccess().getSignalKeyword_2_0_0());
				}
				(
					(
						{
							newCompositeNode(grammarAccess.getDronesBehaviorAccess().getSignalsSignalParserRuleCall_2_0_1_0());
						}
						lv_signals_3_0=ruleSignal
						{
							if ($current==null) {
								$current = createModelElementForParent(grammarAccess.getDronesBehaviorRule());
							}
							add(
								$current,
								"signals",
								lv_signals_3_0,
								"hu.bme.mit.inf.kortargyalo.drones.behavior.xtext.DroneScript.Signal");
							afterParserOrEnumRuleCall();
						}
					)
				)
				(
					otherlv_4=','
					{
						newLeafNode(otherlv_4, grammarAccess.getDronesBehaviorAccess().getCommaKeyword_2_0_2_0());
					}
					(
						(
							{
								newCompositeNode(grammarAccess.getDronesBehaviorAccess().getSignalsSignalParserRuleCall_2_0_2_1_0());
							}
							lv_signals_5_0=ruleSignal
							{
								if ($current==null) {
									$current = createModelElementForParent(grammarAccess.getDronesBehaviorRule());
								}
								add(
									$current,
									"signals",
									lv_signals_5_0,
									"hu.bme.mit.inf.kortargyalo.drones.behavior.xtext.DroneScript.Signal");
								afterParserOrEnumRuleCall();
							}
						)
					)
				)*
			)
			    |
			(
				(
					{
						newCompositeNode(grammarAccess.getDronesBehaviorAccess().getScriptsScriptParserRuleCall_2_1_0());
					}
					lv_scripts_6_0=ruleScript
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getDronesBehaviorRule());
						}
						add(
							$current,
							"scripts",
							lv_scripts_6_0,
							"hu.bme.mit.inf.kortargyalo.drones.behavior.xtext.DroneScript.Script");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRuleSignal
entryRuleSignal returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSignalRule()); }
	iv_ruleSignal=ruleSignal
	{ $current=$iv_ruleSignal.current; }
	EOF;

// Rule Signal
ruleSignal returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			lv_name_0_0=RULE_ID
			{
				newLeafNode(lv_name_0_0, grammarAccess.getSignalAccess().getNameIDTerminalRuleCall_0());
			}
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getSignalRule());
				}
				setWithLastConsumed(
					$current,
					"name",
					lv_name_0_0,
					"org.eclipse.xtext.common.Terminals.ID");
			}
		)
	)
;

// Entry rule entryRuleScript
entryRuleScript returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getScriptRule()); }
	iv_ruleScript=ruleScript
	{ $current=$iv_ruleScript.current; }
	EOF;

// Rule Script
ruleScript returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='script'
		{
			newLeafNode(otherlv_0, grammarAccess.getScriptAccess().getScriptKeyword_0());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getScriptRule());
					}
				}
				{
					newCompositeNode(grammarAccess.getScriptAccess().getDroneDroneCrossReference_1_0());
				}
				ruleQualifiedName
				{
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getScriptAccess().getStatementSequenceParserRuleCall_2_0());
				}
				lv_statement_2_0=ruleSequence
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getScriptRule());
					}
					set(
						$current,
						"statement",
						lv_statement_2_0,
						"hu.bme.mit.inf.kortargyalo.drones.behavior.xtext.DroneScript.Sequence");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleStatement
entryRuleStatement returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getStatementRule()); }
	iv_ruleStatement=ruleStatement
	{ $current=$iv_ruleStatement.current; }
	EOF;

// Rule Statement
ruleStatement returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getStatementAccess().getSequenceParserRuleCall_0());
		}
		this_Sequence_0=ruleSequence
		{
			$current = $this_Sequence_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getStatementAccess().getSimpleWaitParserRuleCall_1());
		}
		this_SimpleWait_1=ruleSimpleWait
		{
			$current = $this_SimpleWait_1.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getStatementAccess().getComplexWaitParserRuleCall_2());
		}
		this_ComplexWait_2=ruleComplexWait
		{
			$current = $this_ComplexWait_2.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getStatementAccess().getMoveParserRuleCall_3());
		}
		this_Move_3=ruleMove
		{
			$current = $this_Move_3.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getStatementAccess().getSendSignalParserRuleCall_4());
		}
		this_SendSignal_4=ruleSendSignal
		{
			$current = $this_SendSignal_4.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getStatementAccess().getCooperateParserRuleCall_5());
		}
		this_Cooperate_5=ruleCooperate
		{
			$current = $this_Cooperate_5.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getStatementAccess().getChargeParserRuleCall_6());
		}
		this_Charge_6=ruleCharge
		{
			$current = $this_Charge_6.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getStatementAccess().getScanParserRuleCall_7());
		}
		this_Scan_7=ruleScan
		{
			$current = $this_Scan_7.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getStatementAccess().getSendMapParserRuleCall_8());
		}
		this_SendMap_8=ruleSendMap
		{
			$current = $this_SendMap_8.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleSequence
entryRuleSequence returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSequenceRule()); }
	iv_ruleSequence=ruleSequence
	{ $current=$iv_ruleSequence.current; }
	EOF;

// Rule Sequence
ruleSequence returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getSequenceAccess().getSequenceAction_0(),
					$current);
			}
		)
		otherlv_1='{'
		{
			newLeafNode(otherlv_1, grammarAccess.getSequenceAccess().getLeftCurlyBracketKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getSequenceAccess().getStatementsStatementParserRuleCall_2_0());
				}
				lv_statements_2_0=ruleStatement
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getSequenceRule());
					}
					add(
						$current,
						"statements",
						lv_statements_2_0,
						"hu.bme.mit.inf.kortargyalo.drones.behavior.xtext.DroneScript.Statement");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		otherlv_3='}'
		{
			newLeafNode(otherlv_3, grammarAccess.getSequenceAccess().getRightCurlyBracketKeyword_3());
		}
	)
;

// Entry rule entryRuleSimpleWait
entryRuleSimpleWait returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSimpleWaitRule()); }
	iv_ruleSimpleWait=ruleSimpleWait
	{ $current=$iv_ruleSimpleWait.current; }
	EOF;

// Rule SimpleWait
ruleSimpleWait returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='wait'
		{
			newLeafNode(otherlv_0, grammarAccess.getSimpleWaitAccess().getWaitKeyword_0());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getSimpleWaitRule());
					}
				}
				{
					newCompositeNode(grammarAccess.getSimpleWaitAccess().getSignalSignalCrossReference_1_0());
				}
				ruleQualifiedName
				{
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			otherlv_2='timeout'
			{
				newLeafNode(otherlv_2, grammarAccess.getSimpleWaitAccess().getTimeoutKeyword_2_0());
			}
			(
				(
					lv_timeout_3_0=RULE_INT
					{
						newLeafNode(lv_timeout_3_0, grammarAccess.getSimpleWaitAccess().getTimeoutINTTerminalRuleCall_2_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getSimpleWaitRule());
						}
						setWithLastConsumed(
							$current,
							"timeout",
							lv_timeout_3_0,
							"org.eclipse.xtext.common.Terminals.INT");
					}
				)
			)
		)?
	)
;

// Entry rule entryRuleComplexWait
entryRuleComplexWait returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getComplexWaitRule()); }
	iv_ruleComplexWait=ruleComplexWait
	{ $current=$iv_ruleComplexWait.current; }
	EOF;

// Rule ComplexWait
ruleComplexWait returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getComplexWaitAccess().getComplexWaitAction_0(),
					$current);
			}
		)
		otherlv_1='wait'
		{
			newLeafNode(otherlv_1, grammarAccess.getComplexWaitAccess().getWaitKeyword_1());
		}
		(
			otherlv_2='timeout'
			{
				newLeafNode(otherlv_2, grammarAccess.getComplexWaitAccess().getTimeoutKeyword_2_0());
			}
			(
				(
					lv_timeout_3_0=RULE_INT
					{
						newLeafNode(lv_timeout_3_0, grammarAccess.getComplexWaitAccess().getTimeoutINTTerminalRuleCall_2_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getComplexWaitRule());
						}
						setWithLastConsumed(
							$current,
							"timeout",
							lv_timeout_3_0,
							"org.eclipse.xtext.common.Terminals.INT");
					}
				)
			)
		)?
		otherlv_4='{'
		{
			newLeafNode(otherlv_4, grammarAccess.getComplexWaitAccess().getLeftCurlyBracketKeyword_3());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getComplexWaitAccess().getReactionsReactionParserRuleCall_4_0());
				}
				lv_reactions_5_0=ruleReaction
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getComplexWaitRule());
					}
					add(
						$current,
						"reactions",
						lv_reactions_5_0,
						"hu.bme.mit.inf.kortargyalo.drones.behavior.xtext.DroneScript.Reaction");
					afterParserOrEnumRuleCall();
				}
			)
		)*
		(
			otherlv_6='on'
			{
				newLeafNode(otherlv_6, grammarAccess.getComplexWaitAccess().getOnKeyword_5_0());
			}
			otherlv_7='timeout'
			{
				newLeafNode(otherlv_7, grammarAccess.getComplexWaitAccess().getTimeoutKeyword_5_1());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getComplexWaitAccess().getOnTimeoutStatementParserRuleCall_5_2_0());
					}
					lv_onTimeout_8_0=ruleStatement
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getComplexWaitRule());
						}
						set(
							$current,
							"onTimeout",
							lv_onTimeout_8_0,
							"hu.bme.mit.inf.kortargyalo.drones.behavior.xtext.DroneScript.Statement");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)?
		otherlv_9='}'
		{
			newLeafNode(otherlv_9, grammarAccess.getComplexWaitAccess().getRightCurlyBracketKeyword_6());
		}
	)
;

// Entry rule entryRuleReaction
entryRuleReaction returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getReactionRule()); }
	iv_ruleReaction=ruleReaction
	{ $current=$iv_ruleReaction.current; }
	EOF;

// Rule Reaction
ruleReaction returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='on'
		{
			newLeafNode(otherlv_0, grammarAccess.getReactionAccess().getOnKeyword_0());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getReactionRule());
					}
				}
				{
					newCompositeNode(grammarAccess.getReactionAccess().getSignalSignalCrossReference_1_0());
				}
				ruleQualifiedName
				{
					afterParserOrEnumRuleCall();
				}
			)
		)
		(
			(
				{
					newCompositeNode(grammarAccess.getReactionAccess().getStatementStatementParserRuleCall_2_0());
				}
				lv_statement_2_0=ruleStatement
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getReactionRule());
					}
					set(
						$current,
						"statement",
						lv_statement_2_0,
						"hu.bme.mit.inf.kortargyalo.drones.behavior.xtext.DroneScript.Statement");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleMove
entryRuleMove returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMoveRule()); }
	iv_ruleMove=ruleMove
	{ $current=$iv_ruleMove.current; }
	EOF;

// Rule Move
ruleMove returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='move'
		{
			newLeafNode(otherlv_0, grammarAccess.getMoveAccess().getMoveKeyword_0());
		}
		otherlv_1='to'
		{
			newLeafNode(otherlv_1, grammarAccess.getMoveAccess().getToKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getMoveAccess().getDestinationPositionParserRuleCall_2_0());
				}
				lv_destination_2_0=rulePosition
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getMoveRule());
					}
					set(
						$current,
						"destination",
						lv_destination_2_0,
						"hu.bme.mit.inf.kortargyalo.drones.behavior.xtext.DroneScript.Position");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleSendSignal
entryRuleSendSignal returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSendSignalRule()); }
	iv_ruleSendSignal=ruleSendSignal
	{ $current=$iv_ruleSendSignal.current; }
	EOF;

// Rule SendSignal
ruleSendSignal returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='send'
		{
			newLeafNode(otherlv_0, grammarAccess.getSendSignalAccess().getSendKeyword_0());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getSendSignalRule());
					}
				}
				{
					newCompositeNode(grammarAccess.getSendSignalAccess().getSignalSignalCrossReference_1_0());
				}
				ruleQualifiedName
				{
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_2='to'
		{
			newLeafNode(otherlv_2, grammarAccess.getSendSignalAccess().getToKeyword_2());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getSendSignalRule());
					}
				}
				{
					newCompositeNode(grammarAccess.getSendSignalAccess().getRecipentDroneCrossReference_3_0());
				}
				ruleQualifiedName
				{
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleCooperate
entryRuleCooperate returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getCooperateRule()); }
	iv_ruleCooperate=ruleCooperate
	{ $current=$iv_ruleCooperate.current; }
	EOF;

// Rule Cooperate
ruleCooperate returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='cooperate'
		{
			newLeafNode(otherlv_0, grammarAccess.getCooperateAccess().getCooperateKeyword_0());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getCooperateRule());
					}
				}
				{
					newCompositeNode(grammarAccess.getCooperateAccess().getRoleRoleCrossReference_1_0());
				}
				ruleQualifiedName
				{
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleCharge
entryRuleCharge returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getChargeRule()); }
	iv_ruleCharge=ruleCharge
	{ $current=$iv_ruleCharge.current; }
	EOF;

// Rule Charge
ruleCharge returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getChargeAccess().getChargeAction_0(),
					$current);
			}
		)
		otherlv_1='charge'
		{
			newLeafNode(otherlv_1, grammarAccess.getChargeAccess().getChargeKeyword_1());
		}
	)
;

// Entry rule entryRuleScan
entryRuleScan returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getScanRule()); }
	iv_ruleScan=ruleScan
	{ $current=$iv_ruleScan.current; }
	EOF;

// Rule Scan
ruleScan returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getScanAccess().getScanAction_0(),
					$current);
			}
		)
		otherlv_1='scan'
		{
			newLeafNode(otherlv_1, grammarAccess.getScanAccess().getScanKeyword_1());
		}
	)
;

// Entry rule entryRuleSendMap
entryRuleSendMap returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getSendMapRule()); }
	iv_ruleSendMap=ruleSendMap
	{ $current=$iv_ruleSendMap.current; }
	EOF;

// Rule SendMap
ruleSendMap returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='send'
		{
			newLeafNode(otherlv_0, grammarAccess.getSendMapAccess().getSendKeyword_0());
		}
		otherlv_1='map'
		{
			newLeafNode(otherlv_1, grammarAccess.getSendMapAccess().getMapKeyword_1());
		}
		otherlv_2='to'
		{
			newLeafNode(otherlv_2, grammarAccess.getSendMapAccess().getToKeyword_2());
		}
		(
			(
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getSendMapRule());
					}
				}
				{
					newCompositeNode(grammarAccess.getSendMapAccess().getRecipentDroneCrossReference_3_0());
				}
				ruleQualifiedName
				{
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRulePosition
entryRulePosition returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPositionRule()); }
	iv_rulePosition=rulePosition
	{ $current=$iv_rulePosition.current; }
	EOF;

// Rule Position
rulePosition returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getPositionAccess().getXDOUBLEParserRuleCall_0_0());
				}
				lv_x_0_0=ruleDOUBLE
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPositionRule());
					}
					set(
						$current,
						"x",
						lv_x_0_0,
						"hu.bme.mit.inf.kortargyalo.drones.behavior.xtext.DroneScript.DOUBLE");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_1=','
		{
			newLeafNode(otherlv_1, grammarAccess.getPositionAccess().getCommaKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getPositionAccess().getYDOUBLEParserRuleCall_2_0());
				}
				lv_y_2_0=ruleDOUBLE
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPositionRule());
					}
					set(
						$current,
						"y",
						lv_y_2_0,
						"hu.bme.mit.inf.kortargyalo.drones.behavior.xtext.DroneScript.DOUBLE");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_3=','
		{
			newLeafNode(otherlv_3, grammarAccess.getPositionAccess().getCommaKeyword_3());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getPositionAccess().getZDOUBLEParserRuleCall_4_0());
				}
				lv_z_4_0=ruleDOUBLE
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getPositionRule());
					}
					set(
						$current,
						"z",
						lv_z_4_0,
						"hu.bme.mit.inf.kortargyalo.drones.behavior.xtext.DroneScript.DOUBLE");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleDOUBLE
entryRuleDOUBLE returns [String current=null]:
	{ newCompositeNode(grammarAccess.getDOUBLERule()); }
	iv_ruleDOUBLE=ruleDOUBLE
	{ $current=$iv_ruleDOUBLE.current.getText(); }
	EOF;

// Rule DOUBLE
ruleDOUBLE returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			kw='-'
			{
				$current.merge(kw);
				newLeafNode(kw, grammarAccess.getDOUBLEAccess().getHyphenMinusKeyword_0());
			}
		)?
		this_INT_1=RULE_INT
		{
			$current.merge(this_INT_1);
		}
		{
			newLeafNode(this_INT_1, grammarAccess.getDOUBLEAccess().getINTTerminalRuleCall_1());
		}
		(
			kw='.'
			{
				$current.merge(kw);
				newLeafNode(kw, grammarAccess.getDOUBLEAccess().getFullStopKeyword_2_0());
			}
			this_INT_3=RULE_INT
			{
				$current.merge(this_INT_3);
			}
			{
				newLeafNode(this_INT_3, grammarAccess.getDOUBLEAccess().getINTTerminalRuleCall_2_1());
			}
		)?
	)
;

// Entry rule entryRuleQualifiedName
entryRuleQualifiedName returns [String current=null]@init {
	HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
}:
	{ newCompositeNode(grammarAccess.getQualifiedNameRule()); }
	iv_ruleQualifiedName=ruleQualifiedName
	{ $current=$iv_ruleQualifiedName.current.getText(); }
	EOF;
finally {
	myHiddenTokenState.restore();
}

// Rule QualifiedName
ruleQualifiedName returns [AntlrDatatypeRuleToken current=new AntlrDatatypeRuleToken()]
@init {
	enterRule();
	HiddenTokens myHiddenTokenState = ((XtextTokenStream)input).setHiddenTokens();
}
@after {
	leaveRule();
}:
	(
		this_ID_0=RULE_ID
		{
			$current.merge(this_ID_0);
		}
		{
			newLeafNode(this_ID_0, grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_0());
		}
		(
			kw='.'
			{
				$current.merge(kw);
				newLeafNode(kw, grammarAccess.getQualifiedNameAccess().getFullStopKeyword_1_0());
			}
			this_ID_2=RULE_ID
			{
				$current.merge(this_ID_2);
			}
			{
				newLeafNode(this_ID_2, grammarAccess.getQualifiedNameAccess().getIDTerminalRuleCall_1_1());
			}
		)*
	)
;
finally {
	myHiddenTokenState.restore();
}

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;